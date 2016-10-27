package projectEnums

import com.project.topic.Topic
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
