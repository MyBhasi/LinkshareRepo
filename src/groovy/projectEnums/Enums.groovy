package projectEnums

/**
 * Created by ashish on 26/10/16.
 */
class Enums {

    enum Visibility {
        PUBLIC, PRIVATE
    }

    enum Seriousness {
        CASUAL, SERIOUS, VERYSERIOUS
    }

    public visibilityList() {
       List<Visibility> list= [Visibility.PUBLIC, Visibility.PRIVATE]
        return list
    }
}
