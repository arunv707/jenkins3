#!groovy
import hudson.security.*
import jenkins.model.*

def instance = Jenkins.getInstance()
def username = 'management'

def hudsonRealm = new HudsonPrivateSecurityRealm(false)
hudsonRealm.createAccount(username,'hifxadmin')
instance.setSecurityRealm(hudsonRealm)

def strategy = new FullControlOnceLoggedInAuthorizationStrategy()
strategy.setAllowAnonymousRead(false)
instance.setAuthorizationStrategy(strategy)
instance.save()