package woo.forsho;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
@ComponentScan(basePackages = {"woo.forsho"})
public class ForshoApplication {

	public static void main(String[] args) {
		SpringApplication.run(ForshoApplication.class, args);
	}
}
