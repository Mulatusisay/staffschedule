package OPS

class Training {
    String trainingCode
    String courseName
    String type
    static belongsTo = [staff: Staff]
    Date traingDate
    Integer expireDurationYr
    //Date expired=(new Date()+360*expireDurationYr)
    String toString() {
        "${courseName}"
    }

    static constraints = {

        staff(blank: true, nullable: true)
        type(inList: ["Mandatory", "Opetional"])
        expireDurationYr(range: 1..5)


    }
}
