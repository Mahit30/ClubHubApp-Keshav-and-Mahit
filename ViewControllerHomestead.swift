//
//  ViewControllerHomestead.swift
//  
//
//  Created by Mahit  Tanikella on 5/24/20.
//

import UIKit

class ViewControllerHomestead: UIViewController {
    
    @IBOutlet weak var interestField: UITextField!
    @IBOutlet weak var textView: UITextView!
    var homesteadClubs: [Club] = [
        Club(name:"Sports Club", email: "sportsclub.hhs@gmail.com", description: "We are a club dedicated to providing freeplay for students at Homestead. We have a meet-up every Monday in the large gym for the first 25 minutes of lunch, and provide the space to play numerous sports such as basketball, soccer, and volleyball."),
        Club(name:"Climate Change Initiative", email: "Gabriela_Balas@fuhsd.org", description: "No description."),
        Club(name:"Ping Pong Club", email: "Lisa_Nakamatus@fuhsd.org", description: "No description."),
        Club(name:"Taiwanese Student Association", email: "Vivian_Ju@fuhsd.org", description: "No description."),
        Club(name:"Beauty Aesthetic Club", email: "Nicole_Zambrano@fuhsd.org", description: "No description."),
        Club(name:"Compassion For All Club", email: "Madeleine_Stanwood@fuhsd.org", description: "No description."),
        Club(name:"Miniatures Club", email: "Kathleen_Shreve@fuhsd.org", description: "No description."),
        Club(name:"Latinx Student Union", email: "Adrianne_Navarro@fuhsd.org", description: "No description."),
        Club(name:"Aerospace Club", email: "hhsaerospace@gmail.com", description: "At HHS Aerospace, we are dedicated to exploring the science behind all things that fall, fly and anything in between."),
        Club(name:"American Sign Language", email: "homesteadsignlanguage@gmail.com", description: "We're a club dedicated to teaching people about American Sign Language and Deaf culture. We teach new signs at each meeting and we also have various volunteer activities and socials for our club."),
        Club(name:"Animal Welfare Club", email: "animalwelfarehhs@gmail.com", description: "Animal Welfare club is all about spreading awareness and volunteering with animals. We also do fun animal-related activities at our meetings, such as making pet toys for animals in shelters."),
        Club(name:"Art Club / NAHS", email: "hhsnahs@gmail.com", description: "Art Club & NAHS (National Art Honor Society) is a fun, tight knit community that blends art with community service. We frequently paint posters for other clubs and are currently working on a mural for Homestead's campus. Additionally, we teach simple arts and crafts to elementary students, along with so much more! No skills required, just a passion for art and helping our community!"),
        Club(name:"Badminton Club", email: "hhsbadmintonclub@gmail.com", description: "Badminton Club is for everyone, from badminton enthusiasts to people who want to learn how to play. During our meetings, we not only have updates on tryouts, but also play fun trivia and announce badminton events. We plan socials at badminton gyms, a local tournament, and more to help you improve your badminton skills. Join us this year to meet new people who also share a passion for badminton!"),
        Club(name:"California Scholarship Federation", email: "homesteadcsf@gmail.com", description: "CSF is a state-wide volunteering club that recognizes student academic achievement and community involvement. Completing a minimum of 5 hours per semester, members attend volunteering events in the community. Some examples of events include arts and crafts activities in senior homes, walk-a-thons and gardening cleanups."),
        Club(name:"Chess Club", email: "homesteadhighchessclub@gmail.com", description: "Chess Clubs provides a place for students to learn new chess strategies, practice playing, and attend tournaments."),
        Club(name:"Comic Club", email: "comicclub121@gmail.com", description: "The Comic Club is a group dedicated to bringing together people who love comics, animations, and other graphic-styled media. Group members can engage in a multitude of fun art related events and activities, including but not limited to animation projects, comic making, and potentially even comic conventions. No matter what skill level, everyone has the potential to improve!."),
        Club(name:"Cubing Club", email: "hhscubing@gmail.com", description: "The cubing club is centered around the hobby speedcubing. Speedcubing is the act of solving Rubik's cube like puzzles as fast as one can. Our club's purpose is to help cubers become faster, and to teach anyone how to solve the 3x3."),
        Club(name:"Design It", email: "hhsdesignit@gmail.com", description: "HHS Design It provides students with an opportunity to learn graphic design through club meetings, workshops, business tours, guest speakers, and many other events. Design It aims to teach students about digital design (Adobe Illustrator, Canva, etc) and help other school clubs and outside organizations/businesses by designing commissions for promotional materials. People of all experience levels are welcome to join!"),
        Club(name:"Drama Club/ITS", email: "hhs.drama.its@gmail.com", description: "We as the drama club create a space where those interested in the theatrical arts can come together and put together performances to share our talents and love of theatre with the Homestead community. We hold events such as One Acts and Improv Nights, and other socials and activities pertaining to theatre. We hope to create a space for all those who are interested in the art to spend time together and perform where all can feel safe and welcomed."),
        Club(name:"Economics Club", email: "hhsekonclub@gmail.com", description: "Economics Club aims to expand the understanding of economics through virtual simulations, hands-on activities, economics class tutoring, and the National Economics Challenge. We invite everyone to join us no matter what economics knowledge they currently have."),
        Club(name:"Engineering Club", email: "hhs4engineering@gmail.com", description: "We are a community of dedicated students preparing ourselves for a career in engineering by exploring engineering concepts, performing demonstrations, and visiting companies."),
        Club(name:"Esports Club", email: "homesteadhighesports@gmail.com", description: "Gaming is an important part of our culture nowadays. Practice and develop your gaming skills in eSports club and compete within and outside our school."),
        Club(name:"FBLA", email: "officers@hhsfbla.com", description: "FBLA is the largest student run business organization in the world, and it aims to bridge business and education together. FBLA gives you the opportunity to participate in competitions on the state and national scale, as well as attend fun events such as business tours. Come to our meetings at lunch in I2 every other Wednesday!"),
        Club(name:"Footprints Christian Club", email: "hhsfootprints@gmail.com", description: "We are a group of people who want to share the love of Jesus with our peers at Homestead. Our doors are always open, anyone that is willing to listen is welcome."),
        Club(name:"French Club / FNHS", email: "hhsfnhs@gmail.com", description: "Our members get the chance to learn more about French culture and the French language. We host a variety of events related to French food, cinema, music, and more! Through French National Honor Society, members also have the opportunity to attend French related volunteer events around the community."),
        Club(name:"Frontier", email: "hhsfrontier@gmail.com", description: "Frontier is the student-run art and literary publication at Homestead, passionate about spreading creativity throughout the community. We publish 5 themed issues a year online and in print containing submissions from students. We also hold socials, art and writing workshops, and the annual school wide writing contest!"),
        Club(name:"Fwd:Love", email: "hhsfwdlove@gmail.com", description: "Fwd: Love thrives brighten the atmosphere of Homestead though our acts of kindness. Above all else, our goal is to show love and kindness to others selflessly."),
        Club(name:"Gender-Sexuality Alliance (GSA)", email: "homesteadhsgsa@gmail.com", description: "GSA provides a social, safe, and confidential space for students in the LGBTQ+ community and allies. The club welcomes anybody, regardless of gender identity, gender expression, or sexual orientation."),
        Club(name:"Green Ops", email: "hhsgreenops@gmail.com", description: "We are the environmental service and sustainability club at Homestead. We participate in some really exciting events, such as regular clean-ups, climate change fairs, socials, etc."),
        Club(name:"HHS Future Physicians of America", email: "hhsfpa@gmail.com", description: "FPA is a science/medical oriented club with a goal to give students more exposure to the medical field. FPA provides guest speaker events, volunteering/internship opportunities, dissections, and hospital tours. No medical experience is necessary to join!"),
        Club(name:"Homestead Cancer Society", email: "hhscancersociety@gmail.com", description: "Our club raises awareness for cancer! We have meetings where we either present and talk about a certain type or we have fun activities. By the end of the year, we donate a lot of the money we raised towards cancer patients and their families."),
        Club(name:"Homestead Cycling Club", email: "hhs.cycling@gmail.com", description: "The homestead cycling club helps teach students how to maintain bikes, host rides and field trips to create a stronger cycling community at homestead. Ask any of our officers to help you if you have any bike troubles."),
        Club(name:"Homestead Interact", email: "hhs.interact@gmail.com", description: "Homestead Interact is a service club sponsored by Rotary, a large international service organization. Club members are given the opportunity to attend a variety of service and leadership events, as well as meet people from around the Bay Area who are also Interact members."),
        Club(name:"Homestead LaunchX", email: "homesteadlaunchx@gmail.com", description: "Homestead LaunchX strives to enable students to begin their entrepreneurial journey while still in high school, by encouraging students to launch their own products and companies with the help of mentors and other professional guidance and resources."),
        Club(name:"Homestead National Honor Society", email: "nhshhs@gmail.com", description: "Homestead National Honor Society is a community service club that recognizes and brings together students who show high achievement in scholarship, leadership and service. We strive to provide our members with valuable opportunities to give back to the local Bay Area community."),
        Club(name:"Homestead Red Cross Club", email: "homesteadredx@gmail.com", description: "The mission of Red Cross is to prevent and alleviate human suffering in the face of emergency through the power of volunteering. Not only do you have the chance to earn community hours, but you can also get trained in life-saving techniques such as CPR and disaster-specific safety and enjoy the opportunity to aid in a nationwide organization!"),
        Club(name:"Homestead TEDx", email: "hhsxtedx@gmail.com", description: "No Description."),
        Club(name:"Green Society", email: "manas.manu3@gmail.com", description: "A club that works on helping the environment and improving it as a whole."),
        Club(name:"Ohana", email: "mvohana@gmail.com", description: "Ohana is dedicated to bridging the social gap between general and special education students through biweekly meetings filled with fun activities."),
        Club(name:"Physics and Engineering", email: "mvphyseng@gmail.com", description: "Our club has meetings discussing various concepts in physics and engineering. We also offer AP Physics 1, AP Physics C, and F=ma study sessions."),
        Club(name:"Sports Medicine", email: "milespereira@yahoo.com", description: "We hope to incorporate hands on learning to improve students awareness of medicine"),
        Club(name:"Science Olympiad", email: "montavistascioly@gmail.com", description: "MVSO participates in Science Olympiad tournaments across the state, competing in a variety of disciplines ranging from engineering to biology."),
        Club(name:"TEDxMontaVista", email: "tedxmontavista@gmail.com", description: "TEDxMontaVista is MVHS’s chapter of TEDx that organizes biannual TEDx conferences and focuses on event organization, discussion, and TED talks."),
        Club(name:"Women in STEM", email: "mv.wistem@gmail.com", description: "WiSTEM supports girls who are interested in STEM, through introducing different topics of science at meetings and providing help in areas requested."),
        Club(name:"Anime", email: "mv.acgclub@gmail.com", description: "Casual anime hobbyists."),
        Club(name:"Astronomy and Astrophysics", email: "mvhsastroclub@gmail.com", description: "Foster an interest in astronomy and astrophysics; we stay up to date on astronomy-related news and hold discussions on assorted topics."),
        Club(name:"Biology", email: "mvhsbiologyclub@gmail.com", description: "Come to weekly meetings for biology olympiad prep, help with biology classes, and guidance on applying to summer internships!"),
        Club(name:"Bridge", email: "ben_smentek@comcast.net", description: "Learn to play Bridge! We are happy to have you and welcome anyone to learn this fun and complex card game."),
        Club(name:"Chemistry", email: "themvchemistryclub@gmail.com", description: "A learning opportunity to go over specific, chem-related labs, learning objectives, extra practice problems, and questions you have."),
        Club(name:"Competitive Programming", email: "programmingcompetitive@gmail.com", description: "Come learn more about competitive programming! We'll help you succeed in programming contests including USACO, Codeforces, and Google Code Jam!"),
        Club(name:"Dungeons and Dragons", email: "dndmvclub@gmail.com", description: "Take a break from the stresses of MV and come join us in adventuring through a fantasy world."),
        Club(name:"French Honor Society", email: "mvfhs09@gmail.com", description: "Bonjour ! MVFHS aims to promote the French language and culture through fun activities (and foods!) which are open to all students!"),
        Club(name:"Improv", email: "mvhsimprov@gmail.com", description: "A cool place for epic funnys and hanging out with your friends!"),
        Club(name:"Japanese", email: "mvhs.jpc@gmail.com", description: "A community for students to foster their interest in Japanese language and culture."),
        Club(name:"Leo", email: "montavistaleoclub@gmail.com", description: "Monta Vista Leo Club is a branch of the largest volunteer organization in the world, comprising of over 1.4 million members across 160 counties."),
        Club(name:"Microfinance", email: "montavistamicrofinance@gmail.com", description: "Raise money to loan to entrepreneurs from third world countries in order to help alleviate poverty and raise awareness."),
        Club(name:"Mock Trial", email: "mvhsmocktrial@gmail.com", description: "A competitive law club where the team argues a criminal case against another school at a courthouse presided over by a judge and scored by attorneys."),
        Club(name:"Music Theory", email: "mvmusictheory@gmail.com", description: "Music Theory Club is a paradise for all music lovers. We compose/transcribe pieces together, and even play as a group ensemble!"),
        Club(name:"MV Official", email: "mjycho@gmail.com", description: "An app development club that works on the MV Official App, a scheduling app for Monta Vista High School."),
        Club(name:"Psychology", email: "mvhspsyhcologyclub@gmail.com", description: "Our club focuses on giving the opportunity to those who have an interest in psychology a chance to learn and discuss more about the subject."),
        Club(name:"Robotics Team", email: "mvrt.mvrt@gmail.com", description: "MVRT is a business-oriented FRC team where members are encouraged to explore their interest in mechanical, electrical, and software engineering."),
        Club(name:"Science National Honor Society", email: "mvsnhs320@gmail.com", description: "Science National Honor Society aims to promote & explore a range of topics in science, through labs, guest speaker events, and fun activities!"),
        Club(name:"Tri-Music Honor Society", email: "mvtrim@gmail.com", description: "Tri-M is our only music club on campus! Members of the society participate in benefit concerts, talent shows, and other music volunteer activities."),
        Club(name:"Urban Soul Movement", email: "urbansoulmovement@gmail.com", description: "We are a freestyle and breakdance club! We discover, create, learn, and practice different forms and moves of breakdance!"),
         Club(name: "Yoga Fitness", email: "hhsyo.fit@gmail.com", description: "We focus on the wellbeing of students. Every meeting we learn something new about yoga and new about ourselves. We are excited to be collaborating with other fitness related clubs for shared events."),
         Club(name: "Women's Empowerment Ambassadors", email: "hhswea@gmail.com", description: "WEA empowers students through conversation and community activities. We encourage our members to be feminists and to advocate for women's equality. Apart from monthly meetings, we regularly attend marches and have out of school festivities."),
         Club(name: "Wilderness Adventurers Club", email: "hhswac@gmail.com", description: "We have fun group hikes, socials, and rock climbing events. Our club meetings focus on environmental issues, current events, and volunteering opportunites."),
         Club(name: "Tri-M/Forte", email: "hhsnmhs@gmail.com", description: "Tri-M/Forte is a club that focuses on integrating community service and music together. We do many events throughout the year, both performance and volunteer. Some examples of things we do include performing at school and nursing homes, caroling, and Jazz Night."),
         Club(name: "Tomorrow's Physicists", email: "homesteadphysicsclub@gmail.com", description: "Our club aims to spread the love and knowledge of physics to HHS students. We also help current physics students with labs, projects and tests."),
         Club(name: "The Differences Among Us (TDAU)", email: "thedifferencesamongus@gmail.com", description: "The Differences Among Us (TDAU) is a club that educates and raises awareness for all mental and physical disabilities. We do this by educating members at our meetings, providing volunteering opportunities at school and with local organizations, and more! Whatever you're into, come join us to embrace The Differences Among Us."),
         Club(name: "Table Top Club", email: "hhstabletop@gmail.com", description: "No Description."),
         Club(name: "Speech and Debate", email: "speechdebate.homestead@gmail.com", description: "Speech and Debate club is for students who want to improve their speaking, develop critical thinking skills, and communicate their ideas to the world. We prepare for and attend several Speech and Debate competitions throughout the school year."),
         Club(name: "Spanish Club/ SNHS", email: "hhsspanishsociety@gmail.com", description: "Spanish Club helps students practice and improve their Spanish in an organic environment. We focus on one Spanish speaking country a month, and connect students with Latin culture. SNHS also provides volunteer opportunities for club members to better their community."),
         Club(name: "Science Olympiad", email: "scienceolympiad.hhs@gmail.com", description: "Science Olympiad is a club where members can explore areas of science, some of which are not typically covered in school. We compete at many tournaments throughout the year! You will have a fun time!"),
         Club(name: "Science For Change/SNHS", email: "scienceforchange.hhs@gmail.com", description: "Science For Change/SNHS is a non-competition based science club that focuses on educating members about certain science branches while also providing volunteer opportunities. We offer a variety of diverse topics and volunteering opportunities. We work with a few labs and non profit organizations."),
         Club(name: "Science Bowl", email: "hhsscibol@gmail.com", description: "Science Bowl is a club where members compete to answer Science related trivia questions. We compete in regionals sponsored by the DOE, and the winning team can qualify for nationals. Join us to be part of the most talented Science club on campus!"),
         Club(name: "Robotics", email: "670mustangs@gmail.com", description: "Robotics is a club that strives to teach students fundamental aspects of STEAM to the entire student body of our school. We code, build, and drive robots; teach business skills and fund management; and also teach members how to market and teach members crucial skills of outreach and video production to ensure that we are open to supporting everyone and their interests. Robotics is not only a club that builds robots but a club that represents Homestead as a whole, building of off all of Homestead's different skills and strengths."),
         Club(name: "Quiz Bowl", email: "hhshistorybowl@gmail.com", description: "Quiz bowl is a trivia based club that focuses on many topics of interest. We read packets for practices during lunches and go to several tournaments a year that cater to all levels. Once a year our varsity teams go to Atlanta, Georgia for National competition."),
         Club(name: "Programming Club", email: "officers@hhsprogramming.com", description: "Homestead Programming Club is a group of passionate and dedicated problem-solvers. Officers host workshops which cover fun and interesting topics and annual committee projects (ex: smart mirror using RaspberryPi, mobile app using Swift and Android, etc), where previous experience is definitely not mandatory to join. Programming Club includes an affiliated chapter of Girls Who Code, in which dedicated officers lead an introductory course throughout the school year on a programming language, such as Python."),
         Club(name: "Octagon Club", email: "homesteadoctagonclub@gmail.com", description: "Octagon is a community service club that holds events to help our local neighborhood. We don't have a minimum hours required so feel free to join at anytime!"),
         Club(name: "Nepali Association Club", email: "hhsnepaliclub@gmail.com", description: "Nepali adoration club is a cultural based club aimed to spread more awerness about our culture. In our meeting we go over some important and interesting facts about the country and our culture. We also particulate I think eh school multicultural fair and are planning on performing this year"),
         Club(name: "National Chinese Honor Society", email: "hhsnchs@gmail.com", description: "NCHS engage students with Chinese language and culture. We are a group of culturally inspired students who wish to dedicate to the community through ways related to Chinese. Members are provided with opportunities to interact and volunteer in cultural events."),
         Club(name: "Muslim Student Association", email: "msahomestead@gmail.com", description: "The purpose of the club is to assist and strengthen the muslim community at Homestead High School. We do this through club meetings and volunteering events. We also education muslims and students of other faiths about Islam."),
         Club(name: "Model United Nations", email: "homesteadmun@gmail.com", description: "Model United Nations (MUN) exposes students to global issues by allowing them to participate in United Nations committee simulations. Members will be introduced to parliamentary procedure as well as utilize critical thinking, debate, negotiation, teamwork, public speaking, and writing skills to address and resolve committee issues. MUN conferences, which are hosted by other high schools or universities feature various committees including UN General Assemblies (GAs), Joint Cabinet Crises (JCC), and special non-UN committees such as the President's Cabinet or Constitutional Convention."),
         Club(name: "Mock Trial", email: "hhsmocktrial@gmail.com", description: "We form a team of around 17-20 students who take on various roles in the courtroom. We prepare a case given by the state and in the spring compete in actual courtrooms in a tournament with other schools in the county."),
         Club(name: "Mental health and awareness club", email: "hhs.mhac@gmail.com", description: "The Mental Health and Awareness club aspires to educate the Homestead community on mental health, available resources, and de-stressing methods. Additionally, we provide a safe space where mental illnesses can be distigmatized and discussed. Through this club, we will improve the quality of student life by teaching lifelong coping skills to minimize stress, anxiety, and maintain mental wellness."),
         Club(name: "Math Club", email: "homesteadmathclub@gmail.com", description: "Homestead Math Club hopes to promote interest in mathematics among the Homestead community, provide an innovative and supportive atmosphere where people can share their passion for math, organize teams of students to compete at local competitions, and host the AMC series for Homestead. We also host weekly meetings to prepare for competitions, discuss interesting applications of math, and take competitions."),
         Club(name: "Martial Arts Club", email: "hhsmmaclub@gmail.com", description: "We have meetings once a month at lunch where we will inform our members about a certain type of martial arts, like kung fu and taekwondo, or something related to martial arts, such as women in martial arts. We have hour long seminars after school on Fridays three times per semester. At our seminars we teach a variety of martial arts things such as kick boxing, forms and self defense."),
         Club(name: "Makers' Society", email: "hhsmakerssociety@gmail.com", description: "HHS Makers' Society strives to create a community of innovative and creative thinkers that enjoy hands-on engineering projects such as Rube Goldberg Machines. Our goal as a club is to compete at the National Rube Goldberg Competition by submitting a video of a successful machine with over 30 steps!"),
         Club(name: "Korean Student Association (KSA)", email: "ksahomestead@gmail.com", description: "Anyeonghaseyo! We aim to spread Korean culture through socials and informative meetings. Our K-pop dance team is KREW, open to anyone who wants to participate, no previous experience needed. We are also a rescue team for LiNK (Liberty in North Korea), an organization that helps relocate North Korean refugees. We hold fundraisers and spread awareness through their documentaries, please come out if you're interested!"),
         Club(name: "Key Club", email: "hhskeyd34s@gmail.com", description: "Key Club is an international student-led organization which provides its members with opportunities to serve their communities, build character and develop leadership. We have a lot of service events and opportunities, as well as many fun ones where you can meet many new like-minded individuals your age. We are affiliated with Kiwanis International and are a recognized club all around the world."),
         Club(name: "JNHS/J-Club", email: "hhsjnhs@gmail.com", description: "Japanese National Honor Society(JNHS)/J-Club promotes Japanese culture through fun socials and volunteer events! Join to eat yummy Japanese food, become active within the Japanese community, and make new friends!"),
         Club(name: "Italian Cultural Club", email: "hhsicc@gmail.com", description: "The Italian Cultural Club is a place where people interested in Italian food, culture and language can come together. It's a welcoming and fun place for everyone! With activities, fundraising and learning, it's a great place to be!"),
         Club(name: "Investments Club", email: "homesteadinvestmentsclub@gmail.com", description: "The investments club aims to teach students about personal finance and investments through guest speakers, lectures, and games."),
         Club(name: "Indo-Pak", email: "hhsindopak@gmail.com", description: "Indo-Pak is a student association at Homestead dedicated to celebrating and promoting cultural awareness throughout the school community.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interestField.delegate = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func enterTapped(_ sender: Any) {
        textView.text = ""
        var interest = interestField.text!
        var clubInterests: [Club] = []
        for club in homesteadClubs{
            if(club.description.containsIgnoringCase(find: interest) || club.name.containsIgnoringCase(find: interest)){
                clubInterests.append(club)
            }
        }
        
        if (clubInterests.count == 0) {
            textView.text = "No Results Found"
        }
        
        else {
            clubInterests = clubInterests.sorted(by: {$0.name < $1.name})
            for club in clubInterests {
                textView.text += "Club: \(club.name)\nContact Info: \(club.email)\nDescription: \(club.description)\n\n"
            }
        }
        
        textView.isScrollEnabled = true
        textView.isUserInteractionEnabled = true
        textView.showsVerticalScrollIndicator = true
        textView.showsHorizontalScrollIndicator = true
        textView.translatesAutoresizingMaskIntoConstraints = false
    }
}
extension ViewControllerHomestead : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

