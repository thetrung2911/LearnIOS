func make_descision(_ weather: String) -> ()->Void{
	switch weather{
		case "trời mát": 
		return {
			print("Hôm nay trời mát")
			print("đi làm cốc bia")
		}
		case "dông bão": 
		return {
			print("Hôm nay trời dông bão")
			print("nhớ mặc áo mưa nhé")
		}
		case "nóng": 
		return {
			print("Hôm nay trời nóng")
			print("đi làm nhớ đeo kinh râm")
		}
		default:
		return{
			print("Đi học pử techmaster là chuẩn rồi")
		}
	}
}
func make_descision2(_ weather: String) -> ()->Void{

	func troi_mat_lam_gi(){
		print("Hôm nay trời mát")
		print("đi làm cốc bia")
	}
	func dong_bao_lam_gi(){
		print("Hôm nay trời dông bão")
		print("nhớ mặc áo mưa nhé")
	}
	func nong_lam_gi(){
		print("Hôm nay trời nóng")
		print("đi làm nhớ đeo kinh râm")
	}
	func default_lam_gi(){
		print("Đi học pử techmaster là chuẩn rồi")
	}

	switch weather{
		case "trời mát": 
		return troi_mat_lam_gi
		case "dông bão": 
		return dong_bao_lam_gi
		case "nóng": 
		return nong_lam_gi
		default:
		return default_lam_gi
	}
}

make_descision2("dông bão")()