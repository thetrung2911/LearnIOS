enum Action {
	case walk
	case climb (step: Int)
	case crawl
}

//Dựa vào param đầu vào trả về closure
func performAction(_ action: Action) ->  (() -> Any) {
	switch (action) {
		case .walk:
			return {()-> String in
				return "Walk"
			}
		case .climb(let step):
			return {() -> String in
				print("Do something")
				return "climb \(step)"
			}

		case .crawl:
			return {() -> Double in
				return 3.14159
			}
	}
}
let walk = performAction(Action.walk)
print(walk())
print(performAction(Action.climb(step: 5))())
print(performAction(Action.crawl)())
