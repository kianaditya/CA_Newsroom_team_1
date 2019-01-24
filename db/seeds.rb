Article.destroy_all
User.destroy_all
Category.destroy_all

member = User.create(email: "member@mail.com", password: "password", first_name: "Member", last_name: "Member", role: 0)
journalist = User.create(email: "journalist@mail.com", password: "password", first_name: "Journo", last_name: "Journo", role: 1)
editor = User.create(email: "editor@mail.com", password: "password", first_name: "Editoro", last_name: "Edit", role: 2)
admin = User.create(email: "admin@mail.com", password: "password", first_name: "Admino", last_name: "Admino", role: 3)

finance = Category.create(name: 'Finance')
categories = ["Sports", "Politics", "Health", "Entertainment"]

categories.each do |category| 
    Category.create(name: category)
end


Article.create(title:"FDA's opioids adviser accuses agency of having 'direct' link to crisis", lede: 'Exclusive: head of Food and Drug Administration’s opioid advisory team says officials are manipulating process to benefit big pharma', body: "The Food and Drug Administration is sacrificing American lives by continuing to approve new high-strength opioid painkillers, and manipulating the process in favor of big pharma, according to the chair of the agency’s own opioid advisory committee.

    Dr Raeford Brown told the Guardian there is “a war” within the FDA as officials in charge of opioid policy have “failed to learn the lessons” of the epidemic that has killed hundreds of thousands of people over the past 20 years and continues to claim about 150 lives a day.
    
    Brown accused the agency of putting the interests of narcotics manufacturers ahead of public health, most recently by approving a “terrible drug”, Dsuvia, in a process he alleged was manipulated.
    
    “They should stop considering any new opioid evaluation,” said Brown. “For every day and every week and every month that the FDA don’t do the right thing, people drop dead on the streets. What they do has a direct impact on the mortality rate from opioids in this country.”
    
    Brown, an anesthesiologist who chairs the FDA committee of specialists advising the agency on whether to approve new opioid painkillers, said he no longer had confidence in repeated assurances by the FDA leadership that it was taking the epidemic seriously and prepared to put public health above the commercial interests of drug makers.", user_id:journalist.id, category: finance, published: true)
Article.create(title:'Amanda Knox: European court orders Italy to pay damages', lede: 'American wants conviction of malicious accusation over Meredith Kercher’s murder overturned', body: "The European court of human rights has ordered Italy to pay Amanda Knox €18,400 for police failures to provide her access to a lawyer and a translator during questioning over the 2007 killing of her British flatmate Meredith Kercher in Perugia.

    The ruling opens the way for Knox’s lawyers to challenge her last remaining conviction, for malicious accusation, in the Italian courts.
    
    The court, in Strasbourg, declared that Italy must pay Knox €10,400 in damages plus €8,000 to cover costs and expenses.
    
    As well as concluding authorities had twice violated her right to a fair trial, the ECHR also found they had failed to investigate her complaints she had been subjected to degrading treatment, including being slapped on the head and deprived of sleep. The court did not, however, uphold her complaint of ill-treatment.
    
    The 31-year-old American’s convictions for murder and sexual assault were previously overturned. She was also found guilty by an Italian court of making a malicious accusation, by allegedly suggesting someone else was guilty of the murder.
    
    The killing of Kercher, a Leeds University European Studies student on a one-year exchange course in Umbria, generated global headlines for several years as charges of sexual assault and murder were fought through the courts – exposing Italy’s justice system to international criticism.
    
    Knox, a language student and Kercher’s flatmate, and Knox’s Italian former boyfriend Raffaele Sollecito were initially charged with sexually assaulting and killing her. Kercher was stabbed in the neck.
    
    The following year Knox was also charged with malicious accusation for suggesting another person should be a suspect. Italian detectives alleged she was trying to hide her responsibility for the attack by blaming someone else. Knox wants to have that conviction quashed.", user_id:journalist.id, category: finance, published: true)
Article.create(title:"Venezuelan general says US-backed 'criminal plan' risks civil war", lede: 'Defence minister Vladimir Padrino accuses opposition, US and regional allies of launching attempted coup against Maduro', body: "The head of Venezuela’s armed forces has thrown his weight behind the embattled president, warning that the country could be thrust into a devastating civil war by what he called a US-backed “criminal plan” to unseat Nicolás Maduro.", user_id:journalist.id, category: finance, published: true)
Article.create(title:'Trapped in a hoax: survivors of conspiracy theories speak out', lede: 'What happens to those caught up in the toxic lies of conspiracy theorists? The Guardian spoke to five victims whose lives were wrecked by falsehoods', body: "Conspiracy theories used to be seen as bizarre expressions of harmless eccentrics. Not any more. Gone are the days of outlandish theories about Roswell’s UFOs, the “hoax” moon landings or grassy knolls. Instead, today’s iterations have morphed into political weapons. Turbocharged by social media, they spread with astonishing speed, using death threats as currency.

    Together with their first cousins, fake news, they are challenging society’s trust in facts. At its most toxic, this contagion poses a profound threat to democracy by damaging its bedrock: a shared commitment to truth.
    
    Their growing reach and scale is astonishing. A University of Chicago study estimated in 2014 that half of the American public consistently endorses at least one conspiracy theory. When they repeated the survey last November, the proportion had risen to 61%. The startling finding was echoed by a recent study from the University of Cambridge that found 60% of Britons are wedded to a false narrative.
    
    The trend began on obscure online forums such as the alt-right playground 4chan. Soon, media entrepreneurs realized there was money to be made – most notoriously Alex Jones, whose site Infowars feeds its millions of readers a potent diet of lurid lies (9/11 was a government hit job; the feds manipulate the weather.)", user_id:journalist.id, category: finance, published: true)
Article.create(title:'
    The Giulianis: our awards for the very worst of Rudy', lede: 'From ‘truth isn’t truth’ to ‘collusion isn’t a crime’, Giuliani’s unique legal defence of Trump deserves its own awards show', body: "Another week, another 12 Rudy Giuliani appearances on cable news show gone awry.

    As Giuliani tries and fails to walk back statements from his past few interviews, and as rumors swirl that even Donald Trump has tired of his lawyer’s repeated gaffes, it’s time for us to reveal the nominations for this year’s Giulianis – the Oscars of incriminating your boss on national television.", user_id:journalist.id, category: finance, published: true)
Article.create(title:'Stuff', lede: 'Stuff', body: "Stuff", user_id:journalist.id, category: finance, published: true)
Article.create(title:'Stuff', lede: 'Stuff', body: "Stuff", user_id:journalist.id, category: finance, published: true)
Article.create(title:'Stuff', lede: 'Stuff', body: "Stuff", user_id:journalist.id, category: finance, published: true)
