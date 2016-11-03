package projectEnums

/**
 * Created by ashish on 26/10/16.
 */
class Enums {

    public enum Visibility {
        PUBLIC, PRIVATE

        public static List<Visibility> allVisibility() {
            return [PUBLIC, PRIVATE]
        }
    }

    enum Seriousness {
        CASUAL, SERIOUS, VERYSERIOUS
    }


}
