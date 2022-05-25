public class FriendTest {
	public static void main(String[] args) {
		Friend f = new Friend("김자바", null);
		
		f.getCompany().getDeptInfo().getPhone();
		
		//이 친구의 회사의 소속된 부서의 연락처 null 체크
		if(f != null) {
			Company c = f.getCompany();
			if(c != null) {
				DeptInfo d = c.getDeptInfo();
				if(d != null) {
					String phone = d.getPhone();
					if(phone != null) {
						System.out.println(phone);
					}
					else {
						System.out.println("연락처 없음");
					}
				}
			}
		}
	}
}