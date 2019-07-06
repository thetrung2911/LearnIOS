

import UIKit

class ViewController: UIViewController {
    var bricks = Set<Brick>()
    var ball = Ball(R: 12)
    var pad = Pad()
    let margin: CGFloat = 8.0
    let col: Int = 1
    let row: Int = 1
    let gameover = UIImageView(image: UIImage(named: "gameover"))
    let gamewin = UIImageView(image: UIImage(named: "gamewin"))
    
    
    
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        gameStart()
        
    }
    func gameStart(){
        buildWall()
        initBallAndPad()
        timer = Timer.scheduledTimer(timeInterval: 0.003, target: self, selector: #selector(gameLoop), userInfo: nil, repeats: true)
        gameover.center = CGPoint(x: view.center.x, y: view.bounds.height + gameover.bounds.height * 0.5)
        view.addSubview(gameover)
        gamewin.center = CGPoint(x: view.center.x, y: view.bounds.height + gamewin.bounds.height * 0.5)
        view.addSubview(gamewin)
    }
    
    func buildWall() {
        let brickWidth = (view.bounds.width - CGFloat(col+1) * margin) / CGFloat(col)
        let brickHeight: CGFloat = 40.0
        for i in 0..<row {
            var brickRow = [Brick]()
            for j in 0..<col {
                let brick = Brick()
                brick.frame = CGRect(x: margin*CGFloat(j+1) + CGFloat(j)*brickWidth,
                                     y: 40.0 + CGFloat(i)*(brickHeight + margin),
                                     width: brickWidth,
                                     height: brickHeight)
                brick.backgroundColor = .brown
                view.addSubview(brick)
                brickRow.append(brick)
            }
            for b in brickRow {
                bricks.insert(b) }
        }
    }
    
    func initBallAndPad() {
        view.addSubview(ball)
        let ycenterPad = view.bounds.height - 25.0
        pad.center = CGPoint(x: view.bounds.width * 0.5, y: ycenterPad)
        ball.center = CGPoint(x: view.bounds.width * 0.5, y: ycenterPad - pad.bounds.height * 0.5 - ball.radius)
        view.addSubview(pad)
    }
    func gameOver(){
        timer.invalidate()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2, execute: {
            for brick in self.bricks   {
                self.bricks.remove(brick)
                brick.removeFromSuperview()
            }
            self.pad.removeFromSuperview()
            self.ball.removeFromSuperview()
            UIView.animate(withDuration: 2, animations: {
                self.gameover.center = self.view.center
                let reset = UITapGestureRecognizer(target: self, action: #selector(ViewController.reset(gesture:)))
                self.gameover.addGestureRecognizer(reset)
                self.gameover.isUserInteractionEnabled = true
            }){ (_) in
                
            }
        })
        
    }
    @objc func reset(gesture: UIGestureRecognizer) {
        if (gesture.view as? UIImageView) != nil {
            self.gamewin.removeFromSuperview()
            self.gameover.removeFromSuperview()
            gameStart()
        }
    }
    func gameWin(){
        timer.invalidate()
        self.ball.removeFromSuperview()
        self.pad.removeFromSuperview()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2, execute: {
            UIView.animate(withDuration: 2, animations: {
                self.gamewin.center = self.view.center
                let reset = UITapGestureRecognizer(target: self, action: #selector(ViewController.reset(gesture:)))
                self.gamewin.addGestureRecognizer(reset)
                self.gamewin.isUserInteractionEnabled = true
            }){ (_) in
                
            }
        })
    }
    
    @objc func gameLoop() {
        var ball_new_x = ball.center.x + ball.vx
        var ball_new_y = ball.center.y + ball.vy
        // va vào thành dọc bên phải
        if ball_new_x > view.bounds.width - ball.radius {
            ball.vx = -ball.vx
            ball_new_x = view.bounds.width - ball.radius
        }
        // va thành dọc bên trái
        if ball_new_x < ball.radius {
            ball.vx = -ball.vx
            ball_new_x = ball.radius
        }
        // va vào pad
        if ball_new_y > view.frame.height + ball.radius {
            gameOver()
        }else if ball_new_y > pad.frame.origin.y - ball.radius {
            if ball_new_x < pad.frame.origin.x + pad.frame.width && ball_new_x > pad.frame.origin.x {
                    ball.vy = -ball.vy
                    ball_new_y = pad.frame.origin.y - ball.radius }
            
        }
        //va vào đỉnh màn hình
        if ball_new_y < ball.radius + 50 {
            ball.vy = -ball.vy
            ball_new_y = ball.radius + 50
        }
        ball.center = CGPoint(x: ball_new_x, y: ball_new_y)
        
        for b in bricks {
            if b.frame.intersects(ball.frame) {
                b.hardness -= 1
                b.alpha = CGFloat(b.hardness)/2.0
                if ball.center.x < b.frame.origin.x { ball.vx = -ball.vx }
                else if ball.center.y < b.frame.origin.y { ball.vy = -ball.vy }
                else if ball.center.x > b.frame.origin.x + b.frame.width { ball.vx = -ball.vx }
                else { ball.vy = -ball.vy }
                if b.hardness == 0 {
                    b.removeFromSuperview()
                    bricks.remove(b)
                    if bricks.count == 0 {
                        gameWin()
                         }
                }
            }
        }
    }
    
}

