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
Article.create(title:'Stuff', lede: 'Stuff', body: "Stuff", user_id:journalist.id, category: finance, published: true)
Article.create(title:'Stuff', lede: 'Stuff', body: "Stuff", user_id:journalist.id, category: finance, published: true)
Article.create(title:'Stuff', lede: 'Stuff', body: "Stuff", user_id:journalist.id, category: finance, published: true)
Article.create(title:'Stuff', lede: 'Stuff', body: "Stuff", user_id:journalist.id, category: finance, published: true)
Article.create(title:'Stuff', lede: 'Stuff', body: "Stuff", user_id:journalist.id, category: finance, published: true)
Article.create(title:'Stuff', lede: 'Stuff', body: "Stuff", user_id:journalist.id, category: finance, published: true)
Article.create(title:'Stuff', lede: 'Stuff', body: "Stuff", user_id:journalist.id, category: finance, published: true)
