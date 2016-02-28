package OPS

class DayOff {
    String dayOff

    String toString ()  {
        "${dayOff}"
    }

   // static belongsTo = [wrk : WorkingDays]
    //Staff staff
    static constraints = {
        dayOff(inList: ["MON","TUE","WED","THU","FRI","SAT","SUN"])

    }
}
