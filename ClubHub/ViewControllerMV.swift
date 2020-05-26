//
//  ViewControllerMV.swift
//  ClubHub
//
//  Created by Mahit  Tanikella on 5/24/20.
//  Copyright © 2020 Mahit  Tanikella. All rights reserved.
//

import UIKit

class ViewControllerMV: UIViewController {

    @IBOutlet weak var interestField: UITextField!
    
    @IBOutlet weak var textView: UITextView!
    
    var mvClubs: [Club] = [
        Club(name:"App and Web Programming", email: "montavistaappwebdev@gmail.com", description: "A&WP aims to spread Android, IOS, and Web Development to all interested students through project based learning. Come develop some cool apps with us!"),
        Club(name:"Animal Protection Society", email: "montavistaaps@gmail.com", description: "MVAPS organizes meetings where we educate students about animal welfare by organizing events, discussions, and field trips to local shelters."),
        Club(name:"Badminton", email: "mvbaddy@gmail.com", description: "A club for all badminton enthusiasts to come have fun and play badminton! Bring your rackets and your friends!"),
        Club(name:"Bring Change 2 Mind", email: "mvlbc2m@gmail.com", description: "Focuses on mental health awareness and decreasing the stigma against mental health."),
        Club(name:"Chess", email: "mvhschessclub@gmail.com", description: "We are a group of passionate chess players that play and learn with each other and compete as a team in tournaments."),
        Club(name:"C++", email: " montavistacpp0@gmail.com", description: "C++ Club is dedicated to teaching students C++ and its applications in algorithmic programming, research, and the industry."),
        Club(name:"Environmental Science", email: "mvenvironmentalscience@gmail.com", description: "MVES organizes events, field trips, and team projects for our members to participate in environmental science volunteer work, research, and activism."),
        Club(name:"Esports and Gaming", email: "montavistaega@gmail.com", description: "A hub for those who like to play any video games both casually and competitively."),
        Club(name:"Gender Sexuality Alliance", email: "monta.vista.hsgsa@gmail.com", description: "LGBT+ students and allies dedicated to advocacy, education, and support. All students welcome!."),
        Club(name:"Go", email: "montavista.go@gmail.com", description: "We play Go, MaJiang, and more / Bring Friends and Have Fun"),
        Club(name:"Indo American Student Association", email: "iasamv@gmail.com", description: "Cultural club that hosts Spotlite on India to spread Indian Culture and raises funds through fundraisers in order to support Ekal Vidyala."),
        Club(name:"Japanese National Honor Society", email: "mv.japanesenationalhonorsociety@gmail.com", description: "A club for Japanese students to further their interest in Japanese language and culture through interactive games and various social events."),
        Club(name:"Model United Nations", email: "montavistamun@gmail.com", description: "MV Model UN is a club that simulates the United Nations, debating imminent world affairs from unique and often foreign perspectives."),
        Club(name:"National Honor Society", email: "mvnhsofficers@gmail.com", description: "Service club which connects students with various volunteer and scholarship opportunities. Past events include fairs and holiday events."),
        Club(name:"Persian", email: "Nzamani687@student.fushd.org", description: "Persian club allows students of all ethnicities to come together and learn about Persian foods, games, holidays, traditions and more!"),
        Club(name:"Roots Christian", email: "mvhsroots@gmail.com", description: "A safe space and community to share, learn, and grow in the Christian faith."),
        Club(name:"Speech and Debate", email: "montavistasd@gmail.com", description: "A competitive team that highlights several facets of public speaking in events that each require a specific skill or talent."),
        Club(name:"Future Practicing Physicians Network", email: "mvhs.fppn@gmail.com", description: "FPPN works to further students’ knowledge of careers in biology and medicine."),
        Club(name:"Girls Who Code", email: "montavistagirlswhocode@gmail.com", description: "Monta Vista Girls Who Code is a club that supports and encourages girls to learn computer science. We teach how to code in numerous coding languages."),
        Club(name:"Key", email: "montavistakeyclub@gmail.com", description: "Oldest & largest volunteer club for high schoolers. We spread our core values through service: caring, character-building, inclusivity, & leadership."),
        Club(name:"La Pluma", email: "mvpublishedwriters@gmail.com", description: "Monta Vista's submission based creative writing and art magazine. Every month we publish a S&S magazine and regularly post new content on our website."),
        Club(name:"Math and Science", email: "mvmsclub@gmail.com", description: "We encourage the participation in math and science by hosting weekly activities, year-long competitions, and participation in local tournaments."),
        Club(name:"Politics", email: "mvjsapoliticsclub@gmail.com", description: "A non-partisan club that promotes political engagement and awareness on campus and in the community. Come for debate competitions, panel discussions, activism campaigns, etc!"),
        Club(name:"Octagon", email: "mvoctagon@gmail.com", description: "Volunteer club that serves local organizations. Raises money for Charity Organizations and connects students to the community. Also loves Stud Life :)"),
        Club(name:"Photography", email: "montavistaphotography@gmail.com", description: "A club where students learn new photography concepts, explore different photographic styles, improve editing skills, and go on fun trips!"),
        Club(name:"Res Novae", email: "mvresnovae@gmail.com", description: "MV's student-run STEM publication, producing monthly online articles & annual print magazine. We research, interview, & report about topics in STEM."),
        Club(name:"Spanish Honor Society", email: "mvhs.shh@gmail.com", description: "Cultural club that allows students to engage in the Spanish language and Hispanic culture through various events and fun meetings."),
        Club(name:"Technovation", email: "mvtechnovationclub@gmail.com", description: "MV Technovation encourages girls to get involved in CS and Business through building apps, writing business plans, and pitching apps to judges."),
        Club(name:"Ultimate Frisbee", email: "nikoviet@live.com", description: "Start out your weekend by de-stressing, hanging out with friends, and making new connections—all doing so while playing your favorite sport!"),
        Club(name:"Artificial Intelligence", email: "mvaiclub@gmail.com", description: "Demystify the hype around AI! Come explore the functionalities and applications of artificial intelligence and learn how AI really works!"),
        Club(name:"Basketball", email: "sid.majeti@gmail.com", description: "Provides a stress-relieving opportunity for students of various skill-levels to come together and play basketball."),
        Club(name:"California Scholarship Federation", email: "montavistacsf@gmail.com", description: "CSF is a volunteering honor society for students interested in helping make the community a better place."),
        Club(name:"Chinese Honor Society", email: "mvchinesehonorsociety@gmail.com", description: "CHS strives to spread awareness and further knowledge about chinese culture and traditions in the campus."),
        Club(name:"Computer Science", email: "mvcsclub@gmail.com", description: "MVCS is, to put it bluntly, the biggest and best tech club. Founded in 2007 as Java Club, MVCS has expanded to embracing the art of computer science."),
        Club(name:"Fashion", email: "mvfashionclub@gmail.com", description: "We are a fashion club that focuses on fashion styling, design, construction, and drawing! We can help cater anywhere from Insta to professional level."),
        Club(name:"MV Hacks", email: "mjycho@gmail.com", description: "A hackathon oriented club that teaches members the basics of programming and holds hackathons."),
        Club(name:"Humanities Central", email: "mvhumanitiescentral@gmail.com", description: "MA political activism club, focused on hosting community wide events to raise awareness for real world issues."),
        Club(name:"Magic the Gathering", email: "rickylschober@gmail.com", description: "We play Magic the Gathering and host events."),
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
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interestField.delegate = self

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func enterTapped(_ sender: Any) {
        textView.text = ""
        var interest = interestField.text!
        var clubInterests: [Club] = []
        for club in mvClubs{
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
extension ViewControllerMV : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension String {
    func contains(find: String) -> Bool{
        return self.range(of: find) != nil
    }
    func containsIgnoringCase(find: String) -> Bool{
        return self.range(of: find, options: .caseInsensitive) != nil
    }
}
