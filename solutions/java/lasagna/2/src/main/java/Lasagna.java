public class Lasagna {
    private static final int TOTAL_COOKING_TIME = 40;
    private static final int LAYER_COOKING_TIME = 2;
    
    public int expectedMinutesInOven() {
        return TOTAL_COOKING_TIME;
    }    

    public int remainingMinutesInOven(int actualMinutes) {
        return expectedMinutesInOven() - actualMinutes;
    }

    public int preparationTimeInMinutes(int layers) {
        return LAYER_COOKING_TIME*layers;
    }

    public int totalTimeInMinutes(int layers, int minutesBeenInOven) {
        return preparationTimeInMinutes(layers) + minutesBeenInOven;
    }

}
