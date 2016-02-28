package LostAndFound

class FoundItem {
    String foundAt
    Date foundDate
    Date reportingDate
    String bagTag
    String foundBy

    //Map foundItem
    static hasMany = [foundItem : Item]

    String toString(){
        "${bagTag}"
    }
    static constraints = {
       // itemCode()
        foundDate()
        foundAt()
        reportingDate()
        bagTag(blank: true)
        foundBy()
        foundItem(blank : false, nullable : true)
    }
}
