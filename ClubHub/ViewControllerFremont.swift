//
//  ViewControllerFremont.swift
//  
//
//  Created by Mahit  Tanikella on 5/24/20.
//

import UIKit

class ViewControllerFremont: UIViewController {
    
    @IBOutlet weak var interestField: UITextField!
    @IBOutlet weak var textView: UITextView!
    var fremontClubs = [
        Club(name:"Writing in Literature and Media", email: "Kindra Bjornson, Catrinel Berevoescu", description: "The purpose of this club is to analyze writing in literature and media and improve member’s own writing skills through group discussions and constructive criticism."),
       Club(name:"Tri-M Music Honor Society", email: "Karli Adams", description: "The Fremont Tri-M Music Honor Society aims to improve the musical community at Fremont and the surrounding community. The motivated music students have an opportunity to expand their leadership skills"),
       Club(name:"Tech Connections", email: "This club will allow students to meet up with those in the tech industry and make connections for the future.", description: "Karthik Iyer, Manan Bhargava"),
       Club(name:"Tabletop Club", email: "Anna Brunkhorst, Annabel Marshall", description: "Tabletop Club gives students a time and place to enjoy themselves and make friends by playing board, card, and party games as well as to learn life skills through strategic games."),
       Club(name:"Speech and Debate", email: "Suryan Bhatia, Ava Tabatabaei", description: "Speech and Debate seeks to provide students academic outlooks for developing their public speaking, research, and argumentation skills. Students will participate in debate tournaments which will be held every month"),
       Club(name:"FHS Sol", email: "Karen Dam, Tammy Phan", description: "The purpose of this club is to assist middle school students in completing their homework and understand the material taught to them. Tutors also help 8th graders in discussing their decisions at high school as incoming freshmen."),
       Club(name:"Society of Women Engineers", email: "Seran Kwon, Elaina Feng", description: "The purpose of the club is to provide a space where women interested in STEM can create a bond. We are affiliated with SWE UC Berkeley and getting mentored by them as well. We also are tutoring elementary school girls how to code."),
       Club(name:"Science Olympiad", email: "Peyton Carroll", description: "The purpose of this club is to tech the Fremont community about different science topics and preparing for science competitions."),
       Club(name:"Science Bowl", email: "Samik Singh, Nikhil Jagota", description: "The purpose of this club is to create a team/s to compete in the regional Science Bowl Competition and teach participants about science, facts, and study habits (for science)."),
       Club(name:"Rubik's Cube Club", email: "Nell Brodkin, Fayre Ella Ooi", description: "The purpose of the club is to learn how to solve Rubik's cubes and other twisting puzzles or to compete against others in speedsolving."),
       Club(name:"Red Cross Club", email: "Sana Prasad, Lynette Loo", description: "This is a volunteer club where members learn about first aid. They are introduced to opportunities through the Red Cross Association and are given opportunities to get First Aid/CPR Certified."),
       Club(name:"Programming Club", email: "David Zhang, Kevin Wang", description: "Programming Club promotes computer science and programming to all students at Fremont. We will guide, provide, help, and tutor students to prepare them for programming in the real world. We also seek to provide students with opportunities to test their skills in hackathons, contests, and tournaments."),
       Club(name:"Political Podcast Club", email: "Eric Bostrom", description: "The purpose of the club is to create weekly podcasts involving but not limited to politics, economics, religion, society and environmental concerns."),
       Club(name:"Outdoor Lab Maintenance", email: "Ava Tabatabaei, Amanda Armstrong, Hunar Singh", description: "In APES last year, students cleaned up the outdoor lab after 8 year of it not be tended for. The purpose of this club is to keep the outdoor lab maintained for future APES and Bio classes."),
       Club(name:"Octagon", email: "Vada Stone, Hannah Le", description: "The purpose of this club is to serve the community and bring people in our school together through helping others."),
       Club(name:"National Art Honor Society", email: "Samantha Li, Elaina Feng", description: "The purpose of the club is to use our artistic talents to serve the community and the school. Our club will be a safe place for artists to gather and share their passions."),
       Club(name:"National Honors Society", email: "Hilla Benmoshe, Tanvi Gaitonde", description: "It is a club where students volunteer their time to help others. The main purpose is to volunteer with educational studies."),
       Club(name:"Nap Time Club", email: "Paul Luckoff, Kevin Slaten", description: "The purpose of this club is to provide students with a space on campus where they can feel comfortable with sleeping during school hours without the risk of missing classes. While this club will provide students an opportunity to catch up on sleep to improve their mental health and concentration for the day, they can also come to learn about ways to improve their sleeping habits."),
       Club(name:"Muslim Student Association Club", email: "Maisha Huq, Samreen Shaik", description: "The purpose of this club is to combat negative stereotypes about Muslims in the media, create a safe and welcoming environment for Muslim and non-Muslim students. This club also helps students learn about Islam and culture where Islam is present, and to raise awareness about world issues faced by Muslims today."),
       Club(name:"Music Club", email: "Siddarth Marathe, Mihir Marathe", description: "The purpose of Music Club is to spread the knowledge of music at Fremont. People can enjoy music together by learning, talking, and playing music. The objective is to let students express their creative side through music and teach students how to play and read music."),
       Club(name:"Mock Trial", email: "Justin He, Sharada Ramesh", description: "The purpose of this club is to introduce students to law and the judicial system and to prepare a team of students for the Mock Trial competition. Students will get the chance to learn from real lawyers and participate in mock trials."),
       Club(name:"FHS Math Club", email: "Trevor Ong, Veeryan Bhatia, Ashley Ke, Elizabeth Ke", description: "The purpose of this club is to create an organized system for participating in math contests and help students improve their problem solving skills."),
       Club(name:"Latino Student Union", email: "Adriana Ramirez", description: "The purpose of this club is to provide a place for Latino students to feel comfortable and advocate for the current issues, but to also give back to the community, create activities for latino students on and off campus."),
       Club(name:"Konnect Dance Troupe", email: "Nicole Belov, Kaila Soriano", description: "Konnect Dance Toupe is a club for all K-pop enthusiasts at Fremont. KDT caters to K-pop fans who want to learn the dance choreographies of the most popular Korean groups and those who want to spread the uniqueness of K-pop style dance."),
       Club(name:"Key Club", email: "Lyka Ilano, Dana Li", description: "The purpose of this club is to develop communication and leadership among peers while serving the community and helping others. Key Club offers volunteer events and regional events with other Key Clubs to provide experience in working together."),
       Club(name:"Jewish Student Union", email: "Shahar Broner, Guy Harel", description: "The purpose of this club is to bring the Jewish community together (and others who wish to learn) and have fun while learning about the Jewish culture."),
       Club(name:"Japanese Club", email: "Ayaka Nakashima, Lauryan Mar", description: "The purpose of our club is to learn about the Japanese language and culture of Japan. Interested students can also get a chance to do fun activities, listen to presentations and to participate in collaboration events with other schools in the district."),
       Club(name:"Invisible Powers", email: "Lavanya Kannan, Tamar Dezaron", description: "The purpose of the club is to promote understanding and create a safe space for people with invisible disabilities to speak and not feel ashamed of their challenges."),
       Club(name:"Investment Club", email: "Anirudh Varadharajan, Rohan Bhandarkar, Hemanth Karnati", description: "This club is for students who are interested in understanding stock markets and businesses. It will focus primarily on long term investing on good, solid companies run by great management teams. The main aim is to promote financial literacy and developing a passion to learn businesses. This will also help students to participate in the stock market and investment competitions."),
       Club(name:"Interact", email: "Valerie Fu, Emily Ngyuen", description: "Interact Club is a community service club that promotes leadership, philanthropy, charity and good will. We are associated with the Sunnyvale Sunrise Rotary Club and contribute on a club, area, and district level."),
       Club(name:"Harry Potter Club", email: "Keerthana Ananda, Sana Prasad", description: "The purpose of the club is to bring together fellow “Potterheads” and discuss the books, movies, and new works; to talk about one of our favorite things and gain new perspectives on the Harry Potter universe."),
       Club(name:"Homestead Cycling Club", email: "hhs.cycling@gmail.com", description: "The homestead cycling club helps teach students how to maintain bikes, host rides and field trips to create a stronger cycling community at homestead. Ask any of our officers to help you if you have any bike troubles."),
       Club(name:"Glee Club", email: "Andrea Maminta, Joe Hohmann", description: "The purpose of this club is to learn and perform music with harmonies all in acapella."),
       Club(name:"Girls Who Code", email: "Jessica Bhalerao, Neeraja Beesetti", description: "Girls Who Code aims to encourage females to participate and create future careers in STEM fields. Our club tries to bring access to enrichment material and educate members to become more experienced programmers."),
       Club(name:"GIDAS (Gene in Diseases and Symptoms)", email: "Smrithi Narayana", description: "A club focused on disease and genetic research."),
       Club(name: "Acting to Protect the Environment (APE)", email: "Stefanie Cisneros, Audrey Rich", description: "The purpose of this club is to spread awareness of harm to the environment, create eco-friendly habits, and to plan events to help make our community a better place."),
       Club(name: "Animal Awareness Advocators", email: "Vivien Su, Alice Zhong", description: "The purpose of this club is to give back to the local animal community and help animals in as many ways as we can (pulling out invasive plants on local ranches, caretaking shelter animals for a day, etc.)"),
       Club(name: "Athletic Society", email: "Ivan Muñoz, Alex Garcia", description: "The purpose of this club is to provide students an opportunity to gain connections with new people over a similar interest in sports."),
       Club(name: "Fremont Awaaz", email: "Anagaa Nathan, Keerti Jammalamadaka", description: "Fremont Awaaz will be Fremont’s Bollywood Dance Team to represent/share Indian culture with our school. We will perform throughout the year and will host a show that highlights our dance team later this year called Shandaar."),
       Club(name: "FHS Black Student Union (BSU)", email: "Audrey Hambrick, Cole Currie", description: "The purpose of this club is to provide a place of refuge for people of color, especially for students who are black, and allies in order to learn Black history and create a greater connection with the FHS and Bay Area Community."),
       Club(name: "BayReach", email: "Murtaza Shiyaji", description: "This club is an extension of a nonprofit, and provides students with volunteer opportunities."),
       Club(name: "Breakthrough", email: "Chris Cho", description: "The purpose of this club is to meet new people and sing songs and talk about Jesus, to have deep conversations and help one another out with our own struggles."),
       Club(name: "Calendar Committee", email: "Tammy Phan, Hannah Yao", description: "The purpose of this club is to express creativity through creating the school staff calendar."),
       Club(name: "Chess Club", email: "Kellen Brosnahan, Peyton Carroll", description: "The purpose of this club is to provide a place where students can meet with other students to play or discuss chess."),
       Club(name: "Chinese Club", email: "Ko Wei Chang, Karen Dam", description: "Our goal is to spread awareness about the Chinese culture and educate people about it. We will also celebrate Chinese holiday across campus and help people understand what it is like to experience Chinese culture."),
       Club(name: "Club of Scientific Discoveries", email: "Peyton Carroll, Shrijit Banerjee", description: "This is a research-based, hypothesis driven club focused on discovery and answering proposed questions. This club is not based on competitions or the memorization of facts like other clubs."),
       Club(name: "Creative Adaptive Lucid Mind", email: "Samhita Vasu, Dhriti Vasu", description: "The purpose of CALM is to develop systems and solutions that allow anyone to develop cognitive fluidity."),
       Club(name: "CSF", email: "Hilla Benmoshe, Melissa Lee", description: "The purpose of this club is to recognize and encourage academic achievement and community service among students."),
       Club(name: "Culinary Club", email: "Sean Kim", description: "The purpose of this club is to give students the opportunity to learn to prepare and cook their own meals."),
       Club(name: "DIY Club", email: "Ayaka Nakashima, Jaclyn Yordanov", description: "The purpose of this club is to provide a creative space for members to try out different crafts and projects. Members will be inspired to change old common materials into a new creation to keep. We will also create projects for the community to make an impact beyond the school."),
       Club(name: "Dungeons and Dragons", email: "Jaron Lemke, John Tarbuskovich", description: "The purpose of this club is to play the engaging role playing fantasy game, Dungeons and Dragons! People who come will be taught how to play and put into groups."),
       Club(name: "Filipino Youth Organization", email: "Jerico Lozares, Frances Mendoza", description: "The purpose of FYO is to enlighten and advocate FHS students of Filipino culture and history along with to teach about how Filipinos engage in society currently to how they may engage in the future."),
       Club(name: "Film Club", email: "Ben Swales, Barak Kaufman", description: "The purpose of this club is to provide a space where people who enjoy watching films can congregate to sit down and watch movies and make films."),
       Club(name: "Firebird Buddies", email: "Seran Kwon, Misha Suresh", description: "The purpose of this club is to build personalized friendships between kids with learning and physical disabilities and those without. We strive to create a community of inclusivity spread on campus."),
       Club(name: "Food Matters", email: "Divisha Singh, Anushka Wagle", description: "The purpose of this club is to spread awareness of healthy nutrition to the local community and to support local food organizations."),
       Club(name: "Fremont High Firebots", email: "Adam Vaughan, Daniel Ziper", description: "The purpose of this club is to strive for success in the pursuit of excellence in engineering, leadership, and community service through participation in the FIRST Robotics program. The club aims to inspire younger students by exposing them to a collaborative STEM environment."),
       Club(name: "French Club/ French Honors Society", email: "Samhita Vasu, Audrey Su", description: "The purpose of this club is to share a love of French culture and enrich knowledge of French through student tutors and activities related to French culture. (music, food, countries, etc.)"),
       Club(name: "Future Business Leaders of America (FBLA)", email: "Siddarth Marathe, Julianne Chen", description: "The purpose of this club is to educate high school students on various business topics and eventually complete in competitions at the end of  the school year."),
       Club(name: "Gamer’s Club", email: "Domingo Hosson, Joshuah Balgobind", description: "The purpose of this club is to bring and play a variety of games while providing a relaxed, cheerful environment."),
       Club(name: "Garden Club", email: "Lindsey Wei, Saloni Naik", description: "The purpose of the club is to share the knowledge of gardening to immerse Fremont students in nature."),
       Club(name: "Gender Sexuality Alliance", email: "Melani Parlan, Kimiya Ehsani", description: "The purpose of this club is to create a safe space to express concerns and share experiences of LGBTQ+ students, to foster a safe and accepting environment on campus for LGBTQ+ students, and to provide information specific to LGBTQ+ students and issues."),
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
        for club in fremontClubs{
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
extension ViewControllerFremont : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
