package worker.tripfinder.dmn;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface DMNModelRepository extends JpaRepository<DMNModel, Long> {
}

