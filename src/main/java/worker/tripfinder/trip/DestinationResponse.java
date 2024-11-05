package worker.tripfinder.trip;

public class DestinationResponse {
    private String destination;
    private String imagePath;

    public DestinationResponse(String destination, String imagePath) {
        this.destination = destination;
        this.imagePath = imagePath;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }
}

