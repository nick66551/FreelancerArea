
2.times do |d|
    FreelanceDocument.create!(
        title:"Document #{d}",
        description:"iMac Pro、iMac、MacBook Pro、MacBook，以及 MacBook Air，自訂你的電腦。免額外付費的運送服務 · 3 個月，0% 利率分期付款", 
        file_url:"https://drive.google.com/file/d/0BwiruVAV7TfFNWdZNWluMDVoMlo0NjNPZmxHSmNVVTNUM1FR/view?usp=sharing",
        image_url:"https://support.apple.com/content/dam/edam/applecare/images/en_US/mac/macfamily-productnav-imac_2x.png",
        service_location:"Hi",
        service_content:2,
        contact:"Yo",
        owner_email:"john@gmail.com"
        )
end

2.times do |d|
    Proposal.create!(
        customer: "Customer #{d}",
        tools: "Ruby",
        estimated_hours: (15+d),
        hourly_rate: 150,
        days_to_complete: 3,
        client_email: "john@gmail.com",
        description: "YAYAYA",
        provide_tool: "Yo",
        location: "YA",
        service_content: 3,
        owner_email: "john@gmail.com"
    )
end

User.create(email: 'john831118@gmail.com', nickname: 'UOne', name: 'User One', password: "pokemon2")
User.create(email: 'user@example.com', nickname: 'UOne', name: 'User One', password: "monkey67")