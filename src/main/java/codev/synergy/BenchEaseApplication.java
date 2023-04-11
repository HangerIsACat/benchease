package codev.synergy;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan
public class BenchEaseApplication {

	public static void main(String[] args) {
		SpringApplication.run(BenchEaseApplication.class, args);
	}

}
