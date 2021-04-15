import ApplicationController from './application_controller'

export default class extends ApplicationController {
  static targets = [ "user", "post", "comment"]

  connect () {
    super.connect()
  }
  create(event){
    console.log(this.userTarget.value);
    console.log(this.postTarget.value);
    console.log(this.commentTarget.value);
    this.stimulate(
        'CommentReflex#create',
        this.userTarget.value,
        this.postTarget.value,
        this.commentTarget.value
    )
  }
}
