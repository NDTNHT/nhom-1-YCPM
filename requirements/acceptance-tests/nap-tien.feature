Feature: người dùng nạp tiền vào tải khoản
  
 Scenario: Nạp tiền thành công
    Given khách hàng đã đưa thẻ ATM hợp lệ vào máy
    And khách hàng nhập đúng mã PIN
    When khách hàng chọn chức năng nạp tiền
    And khách hàng đưa tiền mặt hợp lệ vào máy ATM
    Then ATM nhận tiền nộp vào và đếm tiền
    And Xác nhận số tiền cần nộp và nộp tiền tài khoản
    Then Số dư tài khoản được tăng lên tương ứng
    Then giao dịch được ghi nhận thành công

Scenario: Tiền tệ không hợp lệ
    Given khách hàng đã đưa thẻ ATM hợp lệ vào máy
    And khách hàng nhập đúng mã PIN
    When khách hàng chọn chức năng nạp tiền
    And Khách hàng đưa tiền không hợp lệ vào máy ATM
    Then Hệ thống từ chối giao dịch nạp tiền
    And thông báo lỗi tiền không hợp lệ
    
Scenario: tiền đã nạp nhưng số dư không tăng 
    Given khách hàng đã đưa thẻ ATM hợp lệ vào máy
    And khách hàng nhập đúng mã PIN
    When khách hàng chọn chức năng nạp tiền
    And khách hàng đưa tiền mặt hợp lệ vào máy ATM
    Then ATM nhận tiền nộp vào và đếm tiền
    And Xác nhận số tiền cần nộp và nộp tiền tài khoản
    Then Số dư tài khoản không được tăng lên tương ứng
    And giao dịch được ghi nhận không thành công
    Then hoàn lại số tiền đã nạp



