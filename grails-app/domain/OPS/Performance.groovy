package OPS

class Performance {

    Date evaluationDate
    String evaluationPeriod
    Date from
    Date to
    Integer totalScore
    Integer oTP
    Integer baggageDelivery
    Integer baggageTransfer
    Integer irregularityObserved
    Integer aCE
    Integer teamWork
    Integer planning

    //static mapping = {
      //  totalScore formula: baggageTransfer+aCE
   // }

    static belongsTo = [staff:Staff]
    //Integer averageScore="${+scores}"
    //Staff staff

    String toString() {
        "${staff},${totalScore}"
    }
    static constraints = {
        staff()
        evaluationPeriod inList: ["Daily","Weekly","Monthly","Quarterly","yearly"]
        from ()
        to()
        evaluationDate()
        oTP range: 1..5
        baggageDelivery range: 1..5
        baggageTransfer range: 1..5
        irregularityObserved range: 1..5
        aCE range: 1..5
        teamWork range: 1..5
        planning range: 1..5
        totalScore(nullable: true)
        //averageScore


    }

}
