package OPS

class WorkDetails {
    String title
    String role
    String status
   // Schedule schedule

    static hasMany = [dayOff: DayOff]
    static belongsTo = [staff:Staff]
    static constraints = {

        title(inList: ["MLF", "BCH", "GSE", "CSClerk", "JCSA", "CSA", "SCS", "CRO", "Lead", "Sup", "Duty Manager", "Manager"])
        role(inList: ["Loader", "Agent", "Appearance", "Assistance", "BRS", "Group Leader", "Lead", "I", "II", "III", "Part timer", "Ramp Svc", "other "])
        // dayOff(blank:true, nullable:true)
        status(inList: ["Contract", "Permanent", "Par Timer", "Trainee", "Pending", "Suspended", "Terminated"])
        dayOff(nullable: true)

        staff(blank: true, nullable: true)
    }
}
