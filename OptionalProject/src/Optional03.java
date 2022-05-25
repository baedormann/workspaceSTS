import java.util.Optional;

public class Optional03 {
	public static void main(String[] args) {
		Optional<String> box1 = Optional.ofNullable("Optional String");
		//Function<? super String, ? extends String> mapper
		//U apply(T t)
		//Optional<String>자료형으로 받겠다. .map();의 실행결과 또한 Optional<String>자료형.
		Optional<String> box2 = box1.map(s -> s.toUpperCase());
		System.out.println(box2.get());
		//.map은 Optional<T>에 대한 메소드이다.
		//.map이 사용되어도 자료형은 Optional<T>로써 동일하다.
		//따라서 .map메소드 사용을 필요한만큼 반복할 수 있다.
		Optional<String> box3 = box1.map(s -> s.replace(' ', '_'))
									.map(s -> s.toLowerCase());
		System.out.println(box3);
	}
}