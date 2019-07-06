#  Game Tetris

1. Game Xếp gạch

2. Mô tả chi tiết:
    + Các đối tượng trong game
    - Các loại gạch khác nhau
    - Gạch đã rơi ở đáy
    
    + Tương tác người chơi:
    - vuốt sang phải, gạch rơi sang phải 1 ô
    - vuốt sang trái, gạch rơi sang trái 1 ô
    - vuốt xuống, gạch rơi nhanh hơn 1 ô xuống đáy
    - quyết trái 2 ngón, gạch xoay trái 90 độ
    - quyệt phải 2 ngón, gạch xoay phải 90 độ  (cái này nên dùng button thì hợp lý hơn)
    
    + Dùng mảng 2 chiều để làm nên chơi ở các viền bo ta cho các số -1, còn ở giữa chưa có gạch cho số 0
    + Khi các viên gạch rơi từ trên xuống thì trong gạch sẽ có giá trị dương
    + Khi các viên gạch chạm đáy thì dừng lại và đổi giá trị dương thành âm
    + Các viên gạch rơi xuống chạm xét cùng 1 cột nếu tích hai ô liền nhau là số âm thì gạch dừng lại và đổi dấu tất cả giá trị trong các ô gạch vừa rơi xuống
    + Khi 1 hàng tất cả đều số âm thì xoá hàng đó và thêm 1 hàng chứa 0 vào trên cùng mảng và sẽ tích điểm cho người chơi
    
    + Các mẫu gạch:
     - Chữ L
        2 0 0       2 2 2       0 2 2       0 0 0
        2 0 0       2 0 0       0 0 2       0 0 2
        2 2 0       0 0 0       0 0 2       2 2 2
     - Chữ i
        0 3 0       0 0 0
        0 3 0       3 3 3
        0 3 0       0 0 0
    - Chữ T
        4 4 4       0 0 4       0 0 0       4 0 0
        0 4 0       0 4 4       0 4 0       4 4 0 
        0 0 0       0 0 4       4 4 4       4 0 0
    - Mẫu ô vuông
        5 5
        5 5
    - Mẫu dấu chấm
        6
    - Mẫu chữ N
        0 7 7       0 7 0       0 0 0       7 0 0
        7 7 0       0 7 7       0 7 7       7 7 0
        0 0 0       0 0 7       7 7 0       0 7 0
    

