puts "🌱 Seeding spices..."

$patient_data = [
    {
     
        name: "Mike Felix",
        email:"fe11@yahoo.com",
        address:"534 Arlington, TX 76006",
        age:"70 years",
   
       
    },
    {
    
        name:"Jude Smith",
        email:"judy@yahoo.com",
        address:"5347 Arlington, TX 76006",
        age:"65 years",
       
       
    },
    {
      
        name: "Mary Smart",
        email:"mary@yahoo.com",
        address:"523 Arlington, TX 76006",
        age:"45 years",
       

    },
       
    {
        
        name: "Michael Scot",
        email:"scot@yahoo.com",
        address:"432 Arlington, TX 76006",
        age:"50years",
        
       
    },
    {
    
        name: "Frank Luke",
        email:"frank@yahoo.com",
        address:"3223 Arlington, TX 76006",
        age:"63 years",
      
        
    },
    {
    
        name: "Alexander Fedrick",
        email:"alex@yahoo.com",
        address:"7646 Arlington, TX 76006",
        age:"75 years",
    
       
    },
    {
       
        name: "Nicole Selmon",
        email:"nicole@yahoo.com",
        address:"321 Arlington, TX 76006",
        age:"67 years",
      
      
    },
    {
        
        name: "Victoria Lucas",
        email:"victoria@yahoo.com",
        address:"523 Arlington, TX 76006",
        age:"74 years",
        
      
    },
    {
        
        name: "Ernest Obi",
        email:"Obi@yahoo.com",
        address:"400 Arlington, TX 76006",
        age:"48 ears",
      
    
    },
    {
        name: "Legend Max",
        email:"legend@yahoo.com",
        address:"2111 Arlington, TX 76006",
        age:"68 years",
        
       
    }
]
$physician_data = [
    {
        image_url: "https://scontent-dfw5-1.xx.fbcdn.net/v/t1.6435-9/131287779_10214795889050848_2924764281345182409_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=730e14&_nc_ohc=4HHyc8CD_DIAX9KK4au&_nc_ht=scontent-dfw5-1.xx&oh=00_AT-yjfaj_PYj7xUvoUKFdoLWwiKqmmmvHmI4Y1PtmCdXgg&oe=636782AA",
        name: "Pius Emefiene",
        specialty: "Primary Physician",

    },
    {
        image_url: "https://st.depositphotos.com/1891797/4154/i/600/depositphotos_41544247-stock-photo-doctor-in-a-white-coat.jpg",
        name: "Gerald Michael",
        specialty: "Internal Medicine",

    },
    {
        image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRttr7zIrrUvm6rdLfldnfbFkKMoZwUJNjHKg&usqp=CAU",
        name: "Alexander Ikemba",
        specialty: "Cardiology",

    },
    {
        image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsqzHrqlHIYftvTH4K209tde5U99wF3FzOOw&usqp=CAU",
        name: "Naomi Chidera",
        specialty: "General Surgery",

    },
    {
        image_url: "https://scontent-dfw5-1.xx.fbcdn.net/v/t1.6435-9/131287779_10214795889050848_2924764281345182409_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=730e14&_nc_ohc=4HHyc8CD_DIAX9KK4au&_nc_ht=scontent-dfw5-1.xx&oh=00_AT-yjfaj_PYj7xUvoUKFdoLWwiKqmmmvHmI4Y1PtmCdXgg&oe=636782AA",
        name: "Legend Zion",
        specialty: "Internal Medicine",

    },
]
# # $appointment_data = [
# #     {
# #         date: Time.current,
# #         patient_id:2,
# #         physician_id:3

# #     },
# #     {
# #         date: Time.current,
# #         patient_id:3,
# #         physician_id:2

# #     },
    
# ]
$review_data = [
    {
        comments: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        time: Time.current,
        patient_id: 2
    },
    {
        comments: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        time: Time.current,
        patient_id: 4
    },
    {
        comments: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        time: Time.current,
        patient_id: 5
    },
    {
        comments: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        time: Time.current,
        patient_id: 1
    },
]


$patient_data.each{|p| Patient.create(p)}
# $appointment_data.each{|a| Appointment.create(a)}
$review_data.each{|r| Review.create(r)}
$physician_data.each{|h| Physician.create(h)}


puts "✅ Done seeding!"
