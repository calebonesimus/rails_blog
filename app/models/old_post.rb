class Post
  attr_accessor :id, :title, :body, :summary, :author, :header_image, :created_at

  def initialize(hash)
    @id           = hash[:id]
    @title        = hash[:title]
    @body         = hash[:body]
    @summary      = hash[:summary]
    @author       = hash[:author]
    @header_image = hash[:header_image]
    @created_at   = hash[:created_at] || Time.now
  end

  def self.all
    unless defined?(@@posts)
      @@posts = [
          Post.new(
            :id           => 1,
            :title        => "Standard Lipsum",
            :body         => "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce a sagittis ante. Nunc sed ultrices felis. Nullam enim felis, semper vitae bibendum vitae, sodales eget urna. Suspendisse id libero vitae nibh fringilla sagittis. Vestibulum sodales diam in orci euismod, eget semper libero consequat. Fusce dignissim lacinia rutrum. Vestibulum non tortor tellus. Cras accumsan metus neque. Ut consectetur, felis ut maximus vestibulum, nisl mauris sollicitudin ex, vel consequat metus mi ac nunc.</p>
                              <p>Proin scelerisque ipsum condimentum elementum condimentum. Vestibulum rhoncus congue mi vel hendrerit. Nunc dapibus turpis id efficitur posuere. Proin nec gravida quam. Vivamus varius eros nisl, dapibus pulvinar mi sagittis quis. Donec nisi augue, rutrum sit amet enim ac, gravida pellentesque est. Duis posuere urna eu lacinia lobortis. Etiam id enim non mauris facilisis maximus id id enim. Aenean facilisis purus ac tellus imperdiet, sit amet laoreet justo euismod. Duis pulvinar, diam eget blandit varius, lacus erat molestie diam, ac varius erat tellus vitae ex. Vestibulum id sapien in dui consequat luctus sit amet vitae nibh. Ut consequat mi accumsan est fringilla elementum. Phasellus convallis, ex et laoreet lobortis, odio ligula porta risus, a vulputate diam est laoreet libero. Ut aliquam ex ipsum, sed porttitor eros hendrerit eget. Vivamus aliquam arcu nec lacus bibendum pretium.</p>
                              <p>Praesent laoreet odio sit amet mi varius tincidunt. Sed eget odio id leo iaculis facilisis in pharetra arcu. Pellentesque ac tortor mi. Aenean posuere, diam feugiat viverra consectetur, massa purus dapibus dui, quis imperdiet nunc nisi eget leo. Morbi sapien risus, aliquet vel est sodales, varius elementum orci. Sed vitae varius sem. Integer eget est nunc. Etiam eu orci eget augue imperdiet egestas. Mauris faucibus sed mi a ultricies. Donec et tempus ipsum. Donec consequat pulvinar tortor, sed egestas ex consequat vitae. Mauris nec nisi sed massa iaculis efficitur et eu ipsum.</p>
                              <p>Suspendisse maximus porta quam, eget bibendum metus tincidunt vitae. Nullam lobortis, nisi sit amet finibus suscipit, dolor turpis dictum nulla, eu tempus magna dolor vel sapien. Aenean luctus nulla sed velit bibendum, sit amet vestibulum ipsum maximus. Cras malesuada elit diam, eu tempus nulla commodo vel. Integer pharetra nisi neque, quis cursus ante malesuada et. Aenean lobortis turpis dolor, quis suscipit diam venenatis ut. Aliquam vel diam massa. Duis efficitur ex et aliquet suscipit. Aenean in nibh eu sapien dapibus ullamcorper ac eget dolor. Vivamus id metus in mauris consequat volutpat. Vivamus rutrum sollicitudin ipsum, at pretium sapien hendrerit vitae.</p>
                              <p> consectetur iaculis purus, vel fermentum erat sollicitudin ac. Morbi ut ex id tortor pharetra accumsan feugiat maximus lacus. Maecenas pellentesque ligula a felis lobortis, sed viverra justo faucibus. Etiam tempus ac ante quis volutpat. Morbi in augue luctus, dapibus dui vel, dapibus justo. Maecenas nisi lorem, ultrices eu felis id, congue tristique orci. In hac habitasse platea dictumst. Donec elementum semper enim vel pulvinar. Morbi at ligula velit. Etiam vel lobortis libero. Maecenas lectus odio, dapibus at augue et, volutpat rutrum mi. Nulla eget odio sit amet odio elementum lobortis. Proin sem est, bibendum vel efficitur ut, rhoncus vel erat. Duis et orci a nibh ultricies varius. Aliquam id bibendum turpis. Pellentesque vel velit ipsum.</p>",
            :summary      => "No School like the Old School",
            :author       => "Latin",
            :header_image => "space_1.jpg",
            :created_at   => (1..10).to_a.sample.months.ago
          ),
          Post.new(
            :id           => 2,
            :title        => "Samuel L. Ipsum",
            :body         => "<p>Look, just because I don't be givin' no man a foot massage don't make it right for Marsellus to throw Antwone into a glass motherfuckin' house, fuckin' up the way the nigger talks. Motherfucker do that shit to me, he better paralyze my ass, 'cause I'll kill the motherfucker, know what I'm sayin'?</p>
                              <p>Do you see any Teletubbies in here? Do you see a slender plastic tag clipped to my shirt with my name printed on it? Do you see a little Asian child with a blank expression on his face sitting outside on a mechanical helicopter that shakes when you put quarters in it? No? Well, that's what you see at a toy store. And you must think you're in a toy store, because you're here shopping for an infant named Jeb.</p>
                              <p>My money's in that office, right? If she start giving me some bullshit about it ain't there, and we got to go someplace else and get it, I'm gonna shoot you in the head then and there. Then I'm gonna shoot that bitch in the kneecaps, find out where my goddamn money is. She gonna tell me too. Hey, look at me when I'm talking to you, motherfucker. You listen: we go in there, and that nigga Winston or anybody else is in there, you the first motherfucker to get shot. You understand?</p>",
            :summary      => "Pulp Fiction",
            :author       => "Quentin Tarantino",
            :header_image => "space_2.jpg",
            :created_at   => (1..10).to_a.sample.months.ago
          ),
          Post.new(
            :id           => 3,
            :title        => "Cupcake",
            :body         => "<p>Jujubes fruitcake pie fruitcake sweet roll macaroon danish donut lollipop. Muffin cotton candy chocolate cake jelly-o chocolate cake biscuit fruitcake gummies. Jelly tart pie sesame snaps chupa chups croissant candy canes dessert cookie. Jelly dessert bear claw oat cake chocolate cake. Croissant soufflé jelly tiramisu icing jelly toffee dragée croissant. Candy ice cream bonbon brownie cheesecake tootsie roll gummi bears. Gingerbread marzipan pie cookie ice cream. Sesame snaps icing chocolate bar ice cream bear claw.</p>
                              <p>Marzipan pastry sugar plum lollipop chupa chups chocolate cake. Donut jelly-o marshmallow. Jelly-o chocolate bar sweet roll sesame snaps brownie bonbon. Sesame snaps sweet caramels fruitcake. Gummies muffin macaroon marzipan. Macaroon biscuit macaroon. Gummies bonbon macaroon liquorice powder gummies candy. Lemon drops fruitcake caramels jelly apple pie oat cake jelly toffee.</p>
                              <p>Gummi bears icing fruitcake halvah soufflé gummi bears tiramisu apple pie liquorice. Tiramisu cupcake candy canes. Oat cake sweet roll macaroon gummies. Tart chocolate bar candy canes chocolate bar pudding chocolate cake cupcake sweet. Cake jelly pudding apple pie gummi bears cheesecake jelly beans. Tootsie roll cake cookie donut cake. Sweet macaroon tart. Jelly sesame snaps lemon drops. Sugar plum ice cream danish sweet roll jelly-o cotton candy powder croissant. Ice cream lollipop cake macaroon cake topping.</p>
                              <p>Candy canes marshmallow sweet dragée cake marshmallow. Pie lollipop bear claw bonbon. Sesame snaps candy cake jelly-o wafer dessert chupa chups pie tart. Candy canes cotton candy gummi bears sugar plum sugar plum. Jelly pudding cupcake cotton candy sweet dessert cupcake sesame snaps. Cheesecake apple pie macaroon carrot cake cookie jelly-o ice cream. Dragée liquorice gummies dragée sesame snaps powder biscuit pastry. Powder ice cream sugar plum bear claw. Sugar plum sugar plum jelly beans liquorice biscuit marshmallow sweet cake. Macaroon cookie dessert icing.</p>",
            :summary      => "Dessert!",
            :author       => "Little Debbie",
            :header_image => "space_3.jpg",
            :created_at   => (1..10).to_a.sample.months.ago
          ),
          Post.new(
            :id           => 4,
            :title        => "Heisenberg",
            :body         => "<p>Saul, Saul... this man that we spoke of before, this... this person that you said could... could disappear me, get me a whole new life and make sure that I'm never found. Yeah I need him, Saul. Gus is gonna murder my whole family. I need this man now. Saul... now, Saul!</p>
                              <p>Anything suspicious? Well... then should we go? Any uh... Cartel news these days? Seems like I'm always reading something or other in the paper. I don't want to talk about it. To you or anyone else. I'm done explaining myself. Gus is dead. We've got work to do.</p>
                              <p>Jesse Jackson? Do you even... ah, I see you have a telephone at least. You know that blinking thing I've been calling you on? I will break this, I will BREAK THIS. Damn druggie idiot. Is this what you've been doing the whole time I've been trying to reach you?</p>
                              <p>The game has changed. The word is out. And you... are a killer. Apparently it's all over town. Somebody crossed you, you got angry, you crushed their skull with an ATM machine. Who cares! Just as long as it's our competitors who believe it and not the police.</p>",
            :summary      => "Meth(ods)",
            :author       => "Vince Gilligan",
            :header_image => "space_4.jpg",
            :created_at   => (1..10).to_a.sample.months.ago
          ),
          Post.new(
            :id           => 5,
            :title        => "Bacon",
            :body         => "<p>Tenderloin andouille bacon boudin chicken turkey picanha ribeye rump leberkas chuck beef ribs cupim tail spare ribs. Ham chicken swine corned beef andouille drumstick jerky leberkas shank boudin beef filet mignon alcatra. Fatback capicola sirloin corned beef chuck, venison pork loin. Meatloaf shoulder short ribs turkey ham hock filet mignon biltong t-bone turducken leberkas hamburger ground round flank kevin. Frankfurter turkey pork biltong alcatra pastrami t-bone ground round pig cupim strip steak kielbasa pork belly. Pork belly short loin filet mignon hamburger kielbasa. Pork loin shankle sirloin tongue turducken.</p>
                              <p>Biltong ball tip boudin, picanha swine cupim rump jowl tenderloin t-bone frankfurter porchetta. Pastrami pork pig sausage hamburger ribeye biltong pancetta. Drumstick sausage frankfurter swine, meatball ham hock ham doner kevin short ribs. Chuck pork belly jowl, pork biltong filet mignon fatback pork loin ball tip beef. Shoulder ham hock kevin, filet mignon corned beef ball tip rump pastrami. Meatloaf doner swine, picanha drumstick pork filet mignon corned beef short ribs turducken ground round short loin alcatra ball tip bresaola.</p>
                              <p>Jerky swine tri-tip capicola filet mignon pig doner shoulder porchetta. Bresaola ground round sausage prosciutto beef. Pork loin filet mignon ground round beef ham hock rump. Shoulder boudin venison pancetta. Swine meatloaf beef ribs fatback alcatra picanha venison. Rump t-bone chuck beef, meatloaf fatback tri-tip kevin alcatra kielbasa bresaola picanha pork filet mignon.</p>
                              <p>Tenderloin pork loin porchetta, ham hock turkey ribeye andouille brisket t-bone meatloaf meatball strip steak doner venison. Kielbasa drumstick shoulder bresaola jowl short loin rump swine corned beef t-bone ham hock. Picanha salami doner jowl, sirloin tongue frankfurter capicola shankle ribeye chuck spare ribs beef. Ground round turducken fatback filet mignon short ribs rump beef swine doner bresaola hamburger salami sausage. Tail doner drumstick, landjaeger prosciutto turducken pork chop andouille jowl leberkas tri-tip venison ham hock meatloaf.</p>
                              <p>Capicola doner short loin kevin pancetta sausage beef, ribeye hamburger frankfurter filet mignon tail. Flank tail beef pork loin meatloaf drumstick. Bresaola shoulder sausage, bacon strip steak tail sirloin filet mignon pork chop porchetta rump ground round turducken cow pig. Drumstick bresaola alcatra, swine strip steak shank tongue.</p>",
            :summary      => "Delicious",
            :author       => "Pigs",
            :header_image => "space_5.jpg",
            :created_at   => (1..10).to_a.sample.months.ago
          )
      ]
    end
    @@posts
  end

  def self.find(id)
    all.select{|post| post.id == id.to_i }.first
  end

  def self.most_recent_posts
    self.all.sort_by(&:created_at).reverse!
  end

end
