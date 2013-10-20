# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Discipline.create(name: "", description: "", photo_url: "", photo_caption: "", level_1_description: "", level_2_description: "", level_3_description: "", level_4_description: "", all_levels: "", apparatus_description: "", apparatus_photo_urls: ["", ""])
Discipline.create(name: "", description: "", photo_url: "", photo_caption: "", level_1_description: "", level_2_description: "", level_3_description: "", level_4_description: "", all_levels: "", apparatus_description: "", apparatus_photo_urls: ["", ""])
Discipline.create(name: "", description: "", photo_url: "", photo_caption: "", level_1_description: "", level_2_description: "", level_3_description: "", level_4_description: "", all_levels: "", apparatus_description: "", apparatus_photo_urls: ["", ""])
Discipline.create(name: "", description: "", photo_url: "", photo_caption: "", level_1_description: "", level_2_description: "", level_3_description: "", level_4_description: "", all_levels: "", apparatus_description: "", apparatus_photo_urls: ["", ""])
Discipline.create(name: "", description: "", photo_url: "", photo_caption: "", level_1_description: "", level_2_description: "", level_3_description: "", level_4_description: "", all_levels: "", apparatus_description: "", apparatus_photo_urls: ["", ""])
Discipline.create(name: "", description: "", photo_url: "", photo_caption: "", level_1_description: "", level_2_description: "", level_3_description: "", level_4_description: "", all_levels: "", apparatus_description: "", apparatus_photo_urls: ["", ""])

User.create(
	name: "Rachel Stewart", 
	bio: "Rachel is in love with the circus. The affair began with her discovery of fire dancing and street theater, and things got serious when she was accepted to the nine-month Professional Track Training Program at the New England Center for Circus Arts with a major in aerial hoop and a minor in aerial rope. Since graduating, she has performed in venues big and small, for avant-garde theatrical shows and big-budget holiday spectaculars, around the country and up and down the hemisphere, and was awarded Best Artistic Performance at the 2011 Aerial Acrobatic Arts Festival. She is also the founder and co-owner of Esh Aerial Arts.  Rachel loves the depth of understanding that comes from teaching movement arts, and she looks forward to the interactions that come with teaching her classes. She feels constantly nourished, revitalized, challenged, and humbled by her students. Esh Aerial Arts began as a way to make ends meet while she performed. What it has become, and what she hopes it will continue to grow into, is a venue for everyone, from seasoned professionals to recreational amateurs, to discover and hone their bodies’ amazing potential.", 
	role: "teacher", 
	photo: "instructors/rachel_profile_pic.jpg", 
	email: "rachel.stewart@eshaerialarts.com"
	)


User.create(
	name: "Roger May", 
	bio: "Roger is a circus performer with more than a decade of experience in juggling, acrobatics, partner balancing, fire performance, hand balancing, and the aerial arts. He has performed on stages across the country, been featured in instructional videos, and taught workshops from Boston to California to Spain. Roger is a graduate of the New England Center for Circus Arts’ professional track program.  Roger is a proud founding member of the Boston Circus Guild, one half of the performing duo Off the Ground, and a touring member of the circus & fire arts troupe A Different Spin. He is endlessly excited about spreading his circus addiction to everyone – this means you!", 
	role: "teacher",
	photo: "instructors/roger.jpg",
	email: "roger.may@eshaerialarts.com"
	)

User.create(
	name: "Ellen Waylonis May",
	bio: "Ellen first performed on stage at the age of 5, tap dancing to Frank Sinatra’s “High Hopes.” Though her tap career was short lived, she loved the stage, and made her way back during college as a member of an experimental dance troupe. Shortly thereafter, a brief but fiery love affair with hula hooping lead her to the wide world of circus, where she discovered partner acrobatics and aerial arts, and fell head over heals for the joy, sweat, and magic of circus performance.  She honed her skills in the professional training program at the New England Center for Circus Arts, focusing on partner acrobatics, corde lisse, and Spanish web. Ellen’s teaching is informed not only by her experiences studying and performing circus arts, but also by her background in yoga.  She holds an advanced certification in vinyasa and restorative yoga, and is one of only a handful of teachers trained in Unnata Aerial Yoga.  Ellen is excited to share her love of circus with the students at Esh Aerial Arts.",
	role: "teacher",
	photo: "instructors/ellen-acro.png"
	)

User.create(
	name: "Marlon Archer",
	bio: "Marlon Archer has been training various circus disciplines since 2005.  Originally as a hobby, then in the professional training program at the New England Center for Circus Arts, and most recently at the National Circus School in Montreal.  He has a passion for all kinds of acrobatics and strength training, but specializes in Hand Balancing, Aerial Straps, and Hand to Hand.",
	role: "teacher",
	photo: "instructors/Marlon-Archer.jpg")

User.create(
	name: "Micah Ellinger",
	bio: "Micah Ellinger dove head first into circus at age 17 by enrolling in the Professional Track program at New England Center for Circus Arts, where he focused on hand balancing.  He now performs as part of an acrobatic duo. He has performed with Cirque Polynesia in Hawaii, and continues to tour on cruise ships. He is also a certified as a personal trainer. When not traveling the world, Micah is delighted to perform with the Boston Circus Guild and to share his passion for hand balancing and acrobatics with students at Esh.",
	role: "teacher",
	photo: "instructors/micah.jpg")

User.create(
	name: "Amanda Graff",
	bio: "Amanda Graff was always happiest on the balance beam or on the stage as a child. When she found circus as an adult, she was delighted to discover a magical combination of the dance, theater, gymnastics, and visual arts mediums she had loved since childhood. After a few years of training and performing hand-to-hand and partner acrobatics in Boston, Amanda was accepted into the professional training program at the New England Center for the Circus Arts (NECCA) in Brattleboro, VT. Inspired, she decided to take a break from her career as an elementary school teacher to pursue the circus arts. At NECCA, Amanda specialized in walking pipe and trapeze, and continued her training as an acrobat, hand-balancer, and wire-walker. Upon completion of the program she spent a summer as an acrobatics coach at Circus Smirkus summer camp in Lyndonville, VT. Back in Boston, she helped to pilot a program bringing circus arts into after school programs in Cambridge. Amanda finds joy in helping people of all ages discover the limitless possibilities of their bodies through the circus arts!",
	role: "teacher",
	photo: "instructors/amanda.jpg")

User.create(
	name: "Stephanie Jones",
	bio: "Stephanie Jones began to nurture her lifelong love of dance in college as a choreographer and performer in student productions.  After a 2-year stint as a college sprinter she returned to dance, studying at Fusion and the Edge in Los Angeles. Stephanie then moved to Hawaii, where she spent 3 years training and performing with the 24-VII Danceforce adult company, and where she discovered the world of aerial arts. She studied, performed, and eventually taught silks, trapeze, and pole with Fit for a Goddess and Samadhi Hawaii, and she was a founding member of the aerial company Volary Aerial Burlesque.  Always ready to explore new places, she moved to Boston, passing through India to earn her yoga teacher certification.  Stephanie is excited to be teaching at Esh; she loves introducing others to the wonderful world of flying.",
	role: "teacher",
	photo: "instructors/stephanie.jpg")

User.create(
	name: "Trevor Kafka",
	bio: "Trevor Kafka first discovered circus arts when he was inspired by the artists of Cirque du Soleil at age 13.  He began his circus arts training in the summer of 2006 at Circus Smirkus Summer Camp in Craftsbury Commons, VT, where he realized his passions for aerial acrobatics, hand balancing, and flexibility training.  In 2010-2011, Trevor completed the Professional Track program at NECCA, where he developed a dynamic-height single point trapeze act and floor acrobatic act. He also completed NECCA’s Aerial Fabric and Static Trapeze Teacher Training programs. <br> Trevor has taught aerial acrobatics and flying trapeze at numerous institutions, including World Cup Gymnastics in Chappaqua, NY; Concord Academy Summer Camp in Concord, MA; the STREB Lab for Action Mechanics in Brooklyn, NY; and the 2011 NYC-Regional American Youth Circus Organization Festival in Queens, NY. <br> Trevor is a member of the Boston Circus Guild, as well as a student at Brandeis University. He is infinitely grateful for all of the wonderful circus opportunities that Massachusetts offers, and he is overjoyed to be a part of the driving force that helps the circus community grow.",
	role: "teacher",
	photo: "instructors/trevor.jpg")

User.create(
	name: "Kate Law",
	photo: "instructors/Kate-Law.jpg",
	bio: "Kate Law graduated from the University of Puget Sound.  While there, she was an active choreographer and performer. She has performed with Tensile Dance (Tacoma, WA), as well as Jo Krieter/Flyaway Productions, Project Bandaloop, The Crucible, and Supperclub in the Bay Area.  Her movement background began with competitive gymnastics, and spread to a four-year affair with pole vaulting and a lifetime relationship with dance and circus arts. She has trained with Master Lu Yi (SF Circus Center), Stephane Beauregard (Cirque du Soleil), Ethan Law, and Veronique Thibeault (L’Ecole National du Cirque). She is currently a member of the Boston Circus Guild, in addition to choreographing, performing, and producing for her company, Bow & Sparrow. She loves a hot cup of tea, inclement weather, and ninjas.",
	role: "teacher")

User.create(
	name: "Eileen Little"
	bio: "Eileen Little has been climbing on things ever since she can remember, but she first touched a trapeze when she was working toward her MFA in Acting from the National Theater Conservatory.  Eileen is co-artistic director and co-founder of Fight or Flight, an aerial theater company based in NYC. She teaches aerial workshops and classes across the US, and in conjunction with Fight or Flight tailors aerial programs to school curricula for education and outreach.  She is a graduate of the New England Center for Circus Arts in Brattleboro, VT.  Eileen performs regularly in the Boston area and is a member of Girls on Trapeze, whose latest show “Herself Rising” is touring across the U.S. <br> www.eileenlittle.com",
	role: "teacher",
	photo: "instructors/eileen.png")

User.create(
	name: "Tracy McAskill",
	bio: "Tracy McAskill began studying contortion at the age of 16. She credits her introduction to contortion to her extensive dance background. Taking her first ballet class at the age of 6, she quickly excelled and began competing in dance competitions in her early teens. This competitive environment inspired Tracy to begin her own personal conditioning regime, where stretching gradually turned into contortion. Tracy began seriously training as a contortionist in 2008. She takes a very methodical and safety-conscious approach to her training and specializes in extreme back flexibility and oversplits.",
	role: "teacher",
	photo: "instructors/Tracy.jpg"
	)

User.create(
	name: "Theresa Racicot",
	bio: "Theresa Racicot fell in love with physical fitness in January of 2000. She discovered flying trapeze and circus arts shortly thereafter, and has been pursuing education and training in these modalities ever since. Her passion to share fitness and a healthy lifestyle lead her to become certified as a personal trainer and as a pilates and yoga instructor. <br> When she isn’t working out on the ground, Theresa takes to the air.  She completed the Static Trapeze Teacher Training at the New England Center for Circus Arts in Brattleboro, VT.  She has also been working as a flying trapeze instructor since 2008. Theresa describes flying trapeze – her favorite aerial discipline – as “singing to my soul.”",
	role: "teacher",
	photo: "instructors/Theresa.png")

User.create(
	name: "Gina DeFreitas",
	bio: "Gina DeFreitas is an aerialist, dancer, choreographer and circus performer. With roots in Boston, dance and performing brought her to NYC, where she studied at Broadway Dance Center, Alvin Ailey, and New Dance Group. She studied circus arts both in NYC and across the US. Her coaches include Elsie Smith of the New England Center for Circus Arts, and Elena Panova of the San Francisco Circus Center. <br> Gina is AFAA, CPR, CDT and Zumba certified. She has taught aerial arts, dance, and women’s self defense, and has directed a circus arts camp for kids. <br> Gina has performed in theatrical and corporate productions, musicals, and dance concerts in theaters and venues across the US and abroad."
	role: "teacher",
	photo: "instructors/gina.jpg")

