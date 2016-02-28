package ACE

class Health_blog {
    String title
    String author
    Date dateCreated
    String message
    String category
    String comment

    static constraints = {

        title()
        author()

        message(widget : 'textarea')
        category(inList: ["Back Pain","Healthy Eating","Relation Ship","Common Cold","Stress","Psychology"])
        comment()

    }
}
