Article.destroy_all
User.destroy_all
Category.destroy_all

member = User.create(email: "member@mail.com", password: "password", first_name: "Member", last_name: "Member", role: 0)
journalist = User.create(email: "journalist@mail.com", password: "password", first_name: "Greg", last_name: "Kallai", role: 1)
editor = User.create(email: "editor@mail.com", password: "password", first_name: "Editoro", last_name: "Edit", role: 2)
admin = User.create(email: "admin@mail.com", password: "password", first_name: "Admino", last_name: "Admino", role: 3)

politics = Category.create(name: 'Politics')
economics = Category.create(name: 'Economics')
culture = Category.create(name: 'Culture')
sport = Category.create(name: 'Sport')
lifestyle = Category.create(name: 'Lifestyle')





article1 = Article.create(title:"Opposing bills to end US shutdown fail in Senate, with no clear path forward", lede: 'Trump suffers fresh blow as Democratic proposal got more Republican votes than his own', body: "TDonald Trump suffered a fresh blow on Thursday when a Democratic proposal to reopen the US government got more votes in the Republican-controlled Senate than his own – though both failed in a mood of grim inevitability.

    A measure backed by the president, including $5.7bn to help build a wall on the US-Mexico border, had a vote count of 50-47 in the Senate – well short of the 60 required to advance it over a Democratic filibuster.
    
    The widely predicted twin failure deepened the sense of dysfunctional government and left Washington with no obvious path out of the longest shutdown in US history. Some 800,000 federal workers are set to miss another pay cheque on Friday.
    
    At the White House, Trump sought to put a positive spin on the votes, insisting during some rambling remarks that “we won 50-47”. He was asked by reporters whether he would support any agreement reached by Senate majority leader Mitch McConnell and minority leader Chuck Schumer.
    
    “Well, it depends what the agreement is,” he said. “I mean, yeah - but if they come to a reasonable agreement, I would support it.”
    
    Pressed on whether it has to have money for his border wall, Trump insisted: “I have other alternatives, if I have to. And I’ll use those alternatives if I have to. But we want to go through the system. We have to have a wall in this country. We have criminals pouring into our country.
    
    “And I’m not talking about the southern border. They don’t stay there. They go through and they permeate all throughout the country, including places like Wisconsin - a lot of different places. And that’s the problem.”
    
    Democrats condemned the outcome but noted that six Republicans defied the president on their proposal. Senator Sheldon Whitehouse said: “I’m encouraged that some Senate Republicans are beginning to join Democrats to back a sensible resolution to this mess. They understand that the number one priority is ending this hostage crisis. With the government open, we can consider responsible ways to boost border security. It’s time to end this nonsense now.”
    
    The $350bn-plus funding bill represented the first attempt by Republicans controlling the Senate to reopen the government since the partial shutdown began a record 34 days ago. It would have provided three years of continued protection against deportation for 700,000 immigrants brought to the US illegally as children.", user_id:journalist.id, category: politics, published: true)
article2 = Article.create(title:'US to return first group of asylum seekers to Mexico on Friday', lede: "US to return first group of asylum seekers to Mexico on Friday", body: "The United States will return the first group of migrants seeking US asylum to the Mexican border city of Tijuana on Friday, a Mexican government spokesman said Thursday.

    The spokesman, speaking on condition of anonymity, did not specify the nationalities of those to be returned to Mexico.
    
    The Trump administration announced on 20 December it would send non-Mexican migrants who cross the US southern border back to Mexico to wait while their asylum requests are processed. The policy was aimed at helping cope with rising numbers of Central Americans seeking asylum in the United States.", user_id:journalist.id, category: politics, published: true)
article3 = Article.create(title:"Chelsea’s David Luiz books Carabao Cup final spot in shootout win against Spurs", lede: 'When the final kick was delivered it was the Chelsea players running forward from the halfway line for the victory scrum. David Luiz had scored the decisive penalty.', body: "The head of Venezuela’s armed forces has thrown his weight behind the embattled president, warning that the country could be thrust into a devastating civil war by what he called a US-backed “criminal plan” to unseat Nicolás Maduro.", user_id:journalist.id, category: sport, published: true)
article4 = Article.create(title:"Venezuela crisis: US pulls out staff and tells citizens to 'strongly consider' leaving", lede: 'Defence minister Vladimir Padrino accuses opposition, US and regional allies of launching attempted coup against Maduro', body: "The US state department has urged its citizens to “strongly consider” leaving Venezuela and ordered out non-emergency government staff as the head of the country’s armed forces warned of a civil war sparked by a US-backed “criminal plan” to unseat Nicolás Maduro.

    In a live address to the nation on Thursday, the defence minister, Vladimir Padrino, accused the Venezuelan opposition led by Juan Guaidó, the United States and regional allies such as Brazil of launching an attempted coup against Maduro that risked bringing “chaos and anarchy” to the country. 'We are here to avoid, at all costs … a conflict between Venezuelans. It is not civil war, a war between brothers that will solve the problems of Venezuela. It is dialogue,” said Padrino.

    In a significant blow to Venezuela’s newly energized opposition, the defence minister declared unwavering support for “our commander-in-chief, the citizen Nicolás Maduro'", user_id:journalist.id, category: economics, published: true)
article5 = Article.create(title:'Azealia Banks: fearless truthteller or relentless troll?', lede: 'She’s addicted to controversial, often bigoted outbursts – recently against the population of Ireland. Yet fans continue to root for the rapper – because she’s the opposite of safe', body: "Last week, in the most high-profile celebrity aviation incident since Kate Moss popularised the term “basic bitch” in a row with easyJet staff about sandwiches, the American rapper Azealia Banks removed herself from an Aer Lingus flight after calling a flight attendant an “ugly Irish bitch”.

    According to a tearful video she posted on Instagram, Banks said a flight attendant asked her questions she couldn’t answer without checking her passport, which she had stored in the overhead locker. As she looked for her passport, the situation escalated. A fellow passenger told Mail Online they felt the crew were heavy-handed.After disembarking the flight voluntarily, Banks called the Aer Lingus staff “ugly Irish women”, threatening to throw geese into the engine of the plane. When the incident sparked a semi-serious tabloid row about the beauty or lack thereof of Irish women, Banks apologised to her Irish fans, calling herself the “Queen of Ireland” and asking that they throw baked potatoes at her if they were offended by her comments.

    Is there a tougher gig than being Banks’s publicist? You wonder if they get strapped into the same spinning chair they use to stress-test astronauts. Since breaking out in 2011 with 212, her fast-flowing celebration of cunnilingus, Banks’ gift for controversy would challenge even the most battle-hardened PR professional.
    
    In 2017, she accepted a plea deal after an incident in which she bit a New York City bouncer on the breast and spat on her. In 2016, she claimed that the actor Russell Crowe assaulted her during a party in a Beverly Hills hotel room. Prosecutors dropped the case after other partygoers told police that they had witnessed Banks threaten to attack a woman with broken glass. In 2015, she was removed from a Delta flight after calling an attendant a “fucking faggot”. A year later, she called Zayn Malik a “curry-scented bitch”, and asked for Sarah Palin to be gangbanged.", user_id:journalist.id, category: culture, published: true)
article6 = Article.create(title:'Police arrest 19 people over FGM gang attacks on women in Uganda', lede: 'Critics say police should have acted earlier on reports of forceful mutilation of more than 400 women in a month by armed groups', body: "Sixteen men and three women have been arrested for allegedly aiding and abetting female genital mutilation (FGM) in eastern Uganda after reports of gangs attacking women in the region.

The suspects were taken into custody earlier this week after joint police and military operations in Kween district. The arrests followed local media reports of more than 400 women, some as young as 12, being mutilated by force by local gangs in the past month.

FGM was outlawed in Uganda in 2010, but campaigners say too little is being done to persuade people, especially in rural areas, to stamp out the practice.

The reported groups of up to about 100 people are led by elderly women, accompanied by men armed with machetes.

", user_id:journalist.id, category: politics, published: true)
article7 = Article.create(title:'The market for cyber-insurance is growing', lede: "It sounds as if it was named by a seven-year-old boy and looks like a film set. Housed in a sleek black truck, ibm’s “x-Force Command Cyber Tactical Operations Centre” travels from city to city, simulating the experience of falling victim to a cyber-attack. Rows of desks sport monitors and keyboards in a room dominated by three giant video-screens. A control room houses server equipment that allows ibm’s staff to simulate a corporate network—and then throw all manner of digital mischief at it. Teenagers “understand what’s going on straight away”, says Caleb Barlow, who runs the show. Board members at big companies enjoy a visit, too: “It’s so different from what they usually do.”

    But their interest is not merely recreational. Companies are increasingly worried about the threats lurking in their computer systems. A survey in 2018 by kpmg and Harvey Nash, a firm of headhunters, found that only a fifth of it bosses thought their firm was well prepared for an attack.", body: "Stuff", user_id:journalist.id, category: economics, published: true)
article8 = Article.create(title:'Efforts to fix the market in auditing rumble on', lede: 'Auditors are supposed to provide an independent view of company accounts. But regulators fear that the relationship between auditors and those they audit can become too cosy—which is why the European Union has decided that, from 2020, companies will have to switch auditor at least once every 20 years. Last week the Financial Reporting Council (frc), a British regulator, sent a letter to audit firms warning them away from “rotation in form but not in substance”.

That was aimed at subsidiaries of American banks. The frc wants to deter Goldman Sachs and pwc, the auditor it has used since 1926, from seeking to satisfy the new rules by hiring a smaller auditor for the Wall Street firm’s British subsidiary while retaining pwc for the global business.', body: "Stuff", user_id:journalist.id, category: economics, published: true)


article1.image.attach(io: File.open('app/assets/images/article1.jpg'), filename: 'article1.jpg')
article2.image.attach(io: File.open('app/assets/images/article2.jpg'), filename: 'article2.jpg')
article3.image.attach(io: File.open('app/assets/images/article3.jpg'), filename: 'article3.jpg')
article4.image.attach(io: File.open('app/assets/images/article4.jpg'), filename: 'article4.jpg')
article5.image.attach(io: File.open('app/assets/images/article5.jpg'), filename: 'article5.jpg')
article6.image.attach(io: File.open('app/assets/images/article6.jpg'), filename: 'article6.jpg')
article7.image.attach(io: File.open('app/assets/images/article7.jpg'), filename: 'article7.jpg')
article8.image.attach(io: File.open('app/assets/images/article8.jpg'), filename: 'article8.jpg')
