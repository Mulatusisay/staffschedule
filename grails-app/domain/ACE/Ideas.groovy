package ACE

class Ideas {
    String messages
    String subject
    Date dateCreated
    String email
    String name
    String phone

    static constraints = {
        name()
        phone(nullable: true)
        email(email: true)
        subject()
        messages (widget:'textarea')
    }
}
