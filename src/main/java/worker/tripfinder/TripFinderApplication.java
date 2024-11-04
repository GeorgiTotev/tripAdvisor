package worker.tripfinder;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class TripFinderApplication {

    public static void main(String[] args) {

        SpringApplication.run(TripFinderApplication.class, args);
    }

    @GetMapping
    public String helloworld(){
        return "hiii";
    }

}
