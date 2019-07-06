#  Spec của ứng dụng Memory Card:

## Mô tả ngắn gọn: lật các quân bài, nếu lật ra 2 quân giống nhau thì giữ nguyên 2 quân đó, ngược lại thì úp cả 2 quân đó xuống. Game over khi hết giờ mà người chơi chưa lật hết các quân bài, hoặc lật hết các quân bài trước khi hết giờ.

## Mô tả chi tiết:
### Các đối tượng cần có:
+ Các ImageView được lưu trong mảng 2 chiều
+ Label gắn với timer để đếm ngược thời gian chơi
### Tác động của người chơi:
+ Tap vào 1 ImageView bất kỳ đang úp, ImageView đó sẽ được lật lên. Tiếp tục tap vào ImageView thứ hai, nếu ImageView này hiển thị ảnh giống với thằng ban đầu thì giữ nguyên trạng thái lật của 2 thằng, đồng thời ko cho người chơi tap lại vào các ImageView đã được lật nữa. Ngược lại, úp cả 2 thằng vừa tap xuống và bắt đầu lại.
+ Game over xảy ra khi hết thời gian mà người chơi chưa lật được hết quân bài (tính là thua), hoặc khi người chơi đã lật hết các quân bài trước khi hết giờ (tính là thắng).


### Công việc cần làm:
+ xây dựng lớp Card kế thừa từ UIButton         -- done                                                                                           
+ tạo mảng 2 chiều để hiển thị các UIButton lên màn hình        -- done
+ xử lý sao cho mỗi card chỉ có 2 trạng thái úp (ảnh default) và mở (ảnh được random trong mảng ["do","co","bich","tep"])       -- done
+ nếu lật ra 2 quân giông nhau thì giữ nguyên, nếu 2 quân khác nhau thì úp cả 2 xuống
    - s

