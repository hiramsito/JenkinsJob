job('JobClase Parametrizado2'){
  description('JobClase ejemplo de tiendita')
  scm {
    git('https://github.com/hiramsito/JenkinsJob.git', 'main'){ node ->
      node / gitConfigName('hiramsito')
      node / gitConfigEmail('bsgkoke456@gmail.com')
    }
  }
  parameters{
    stringParam('nombre', defaultValue='Hiram', description='Parametro cadena para el Job de la tienda')
    choiceParam('producto', ['Soda 600ml $16', 'Doritos Nachos $12', 'Agua 1L $10','Sincronizada $20'])
    choiceParam('cantidad', ['1', '2', '3','4','5'])
  }
  triggers{
    cron('H/7 * * * *')
    githubPush()
  }
  steps{
    shell("bash jobscript.sh")
  }
  publishers{
    mailer('bariosfp48@gmail.com', true, true)
    mailer('bsgkoke456@gmail.com', true,true)
    slackNotifier{
      notifyAborted(true)
      notifyEveryFailure(true)
      notifyNotBuilt(false)
      notifyUnstable(false)
      notifyBackToNormal(true)
      notifySuccess(false)
      notifyRepeatedFailure(false)
      startNotification(false)
      includeTestSummary(false)
      includeCustomMessage(false)
      customMessage(null)
      sendAs(null)
      commitInfoChoice('NONE')
      teamDomain(null)
      authToken(null)
    }
  }
}
