import signin.Role
import signin.User
import signin.UserRole

class BootStrap {

    def init = { servletContext ->



            def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
            def usersRole = new Role(authority: 'ROLE_USER').save(flush: true)

            def testUser = new User(username: 'ramp', password: 'abcd')
                testUser.save(flush: true)

            UserRole.create (testUser, adminRole, true)

            assert User.count() == 1
            assert Role.count() == 2
            assert UserRole.count() == 1
        // User user=new User (unsername:'admin', password:'secret', enabled:true).save()
        //Role adminRole=new Role (authority:'ROLE_ADMIN').save()

        //  UserRole.create(user, adminRole, true)



        // def user=User.findOrSaveWhere(username: 'mulat', password: 'password')
        // def adminRole=Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
        //if (!user.authorities.contains(adminRole)){
       //UserRole.create(user,adminRole, true)
        //}
    }
    def destroy = {
    }
}