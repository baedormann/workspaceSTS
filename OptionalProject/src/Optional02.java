public class Optional02 {
	public static void main(String[] args) {
		DeptInfo ci = new DeptInfo(null, "Republic of Korea");
		String phone;
		String addr;

		if (ci.phone != null)
			phone = ci.getPhone();
		else
			phone = "There is no phone number.";

		if (ci.addr != null)
			addr = ci.getAddr();
		else
			addr = "There is no address.";

		System.out.println(phone);
		System.out.println(addr);
	}
}