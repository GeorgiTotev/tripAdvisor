package worker.tripfinder.trip;

public class TripPreferences {

    //seasons
    private String season;
    public String getSeason() {return season;}
    public void setSeason(String season) {this.season = season;}

    //activities
    private String activity;
    public String getActivity() {return activity;}
    public void setActivity(String activity) {this.activity = activity;}

    @Override
    public String toString() {
        return "TripPreferences{" +
                "season='" + season + '\'' +
                ", activity='" + activity + '\'' +
                '}';
    }

}
