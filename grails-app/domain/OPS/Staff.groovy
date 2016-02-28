package OPS

class Staff {
    String idNumber
    String firstName
    String midleName
    String lastName
    String gender
    Date birthDate=(new Date().minus((365.125*18).toInteger()))
    Date seniorityDate
    String role
    String title
    String status
    String email
    String address
    String city
    String phoneNumber



    String toString () {
        "${idNumber},${firstName}, ${midleName}"
    }

    static hasMany = [workDetails: WorkDetails, training:Training]
//    static searchable={        [only:"idNumber&&firstName" ]    }

    static constraints ={
        idNumber()
        firstName (blank: false, nullable: false)
        midleName()
        lastName (blank: true, nullable: true)
        role(inList: [ "BCH","Agent","GSE","","Part timer","Appearance","Ramp Svc","other "])
        title(inList: ["MLF","G4","Lead","Clerk","JCSA","CSA","SCS","Assistance","Acting","I","II","III","Team Leader","Duty Manager","Manager","CRO","Lead"])
        status(inList: [ "Temporary","Contract","Permanent","Trainee","Par Timer","Pending","Suspended","Terminated"])
        gender(inList:["M", "F"])
        birthDate(max: (new Date()-365*18) )//age min: 18 ...
        email email: true, blank: true, nullable: true
        city()
        address()
        phoneNumber(blank: true, nullable: true)
        seniorityDate()
        //Integer empCount=Staff.count()
        workDetails(blank:true, nullable:true)
        training(blank:true, nullable: true)
    }
}
