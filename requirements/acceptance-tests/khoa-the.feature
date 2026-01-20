Feature: Khóa thẻ

   Scenario: khóa thẻ thành công
   Given Khách đã có thẻ ATM
   And Xác minh đúng chủ sở hữu - CCCD là người đã gửi yêu cầu
   When khách hàng gửi yêu cầu khóa thẻ 
   Then hệ Thống khóa thẻ được yêu cầu
   And Hệ thống ghi nhận lại kết quả 
   Then Thẻ của khách đã được khóa

