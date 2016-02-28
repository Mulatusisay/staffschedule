package OPS

class Team {
    String teamName
    Integer count
    //static hasMany = [bch:BCH]
   // Task tasks

   String toString () {"${teamName}"}

    static constraints = {
        teamName()
        count()

    }


}
