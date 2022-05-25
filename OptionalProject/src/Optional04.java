import java.util.Optional;

public class Optional04 {
	public static void main(String[] args) {
		Optional<String> os1 = Optional.of("Java");
		Optional<String> os2 = Optional.ofNullable(null);

		// os1의 문자열 가지고 오기
		String data1 = os1.map(s -> s.toString()).orElse("데이터 없음");
		String data2 = os2.map(s -> s.toString()).orElse("데이터 없음");

		System.out.println(data1);
		System.out.println(data2);

		//////////////////////////////////////////////////////
		Friend f = new Friend("김자바", null);

		// 이 친구의 회사의 소속된 부서의 연락처
		if (f != null) {
			Company c = f.getCompany();
			if (c != null) {
				DeptInfo d = c.getDeptInfo();
				if (d != null) {
					String phone = d.getPhone();
					if (phone != null) {
						System.out.println(phone);
					} else {
						System.out.println("연락처 없음");
					}
				}
			}
		}
		
		Optional<Friend> os = Optional.ofNullable(f);
		String phone = os.map(f1-> f1.getCompany())
						.map(c -> c.getDeptInfo())
						.map(d -> d.getPhone())
						.orElse("연락처가 없습니다.");
		
		System.out.println(phone);

	}
}
