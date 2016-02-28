
package LostAndFound

class ClaimLostItem {

    String lostAt
    Date lostDate
    Date reportingDate
    Date travelDate
    String phoneNumber
    String customerFirstName
    String customerLastName
    String ticketNumber
    String city
    String email
    String departurePoint
    String destination
    String transitStatus
    String toString(){
        "${ticketNumber},${lostItem}"
    }
    //Item lostItems
    static hasMany = [lostItem : Item]

static constraints = {
    ticketNumber()
    customerFirstName()
    customerLastName()
    city()
    email(email: true)
    phoneNumber()
    lostDate()
    reportingDate()
    travelDate()
    departurePoint()
    destination()
    transitStatus()
    lostAt()
    lostItem(blank : false, nullable : true)


}
}
