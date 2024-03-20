class EcoCont {
  final String title;
  final String description;
  final double time;
  final int calories;

  EcoCont({
    required this.title,
    required this.description,
    required this.time,
    required this.calories,
  });
}

List<EcoCont> listPositive = [
  EcoCont(
    title: '',
    description: '',
    time: 0,
    calories: 0,
  ),
];
List<EcoCont> listNeutral = [
  EcoCont(
    title: '',
    description: '',
    time: 0,
    calories: 0,
  ),
];
List<EcoCont> listBad = [
  EcoCont(
    title: '',
    description: '',
    time: 0,
    calories: 0,
  ),
];
List<EcoCont> listEco = [
  EcoCont(
    title: 'Green Commute Challenge:',
    description:
        'Replace your usual commute with eco-friendly options like biking or walking.',
    time: 30,
    calories: 150,
  ),
  EcoCont(
    title: 'Park Pickup Plogging',
    description: 'Jog through a local park and pick up litter along the way.',
    time: 45,
    calories: 200,
  ),
  EcoCont(
    title: 'Solar-Powered Yoga',
    description:
        'Practice yoga outdoors using solar-powered speakers for music.',
    time: 40,
    calories: 120,
  ),
  EcoCont(
    title: 'Sustainable Strength Training',
    description:
        'Use reusable materials like sandbags for strength training at home.',
    time: 45,
    calories: 250,
  ),
  EcoCont(
    title: 'Bike-Powered Blender Smoothie',
    description:
        'Blend your post-workout smoothie using a bike-powered blender.',
    time: 20,
    calories: 80,
  ),
  EcoCont(
    title: 'Eco-Run for Reforestation',
    description:
        'Join a virtual race, and for each kilometer run, a tree is planted.',
    time: 60,
    calories: 400,
  ),
  EcoCont(
    title: 'Upcycled Equipment Circuit',
    description:
        'Create a circuit workout using upcycled household items as gym equipment.',
    time: 30,
    calories: 180,
  ),
  EcoCont(
    title: 'Oceanfront Bodyweight Workout',
    description:
        'Exercise on the beach using your body weight, with an emphasis on enjoying the ocean view.',
    time: 45,
    calories: 220,
  ),
  EcoCont(
    title: 'Eco-Friendly Hike',
    description:
        'Explore hiking trails and pick up any trash you find along the way.',
    time: 60,
    calories: 300,
  ),
  EcoCont(
    title: 'Compost Crunches',
    description: 'Do a core workout while turning your kitchen compost bin.',
    time: 20,
    calories: 90,
  ),
  EcoCont(
    title: 'Green Gym Gardening',
    description:
        'Plant and tend to a garden, incorporating squats and lunges during breaks.',
    time: 45,
    calories: 180,
  ),
  EcoCont(
    title: 'Hybrid Car Cleaning Squats',
    description:
        'Squat and clean your hybrid car to combine fitness with eco-friendly habits.',
    time: 30,
    calories: 150,
  ),
  EcoCont(
    title: 'Renewable Energy Rowing',
    description:
        'Use a rowing machine powered by renewable energy for a cardio workout.',
    time: 40,
    calories: 250,
  ),
  EcoCont(
    title: 'Eco-Friendly Scavenger Hunt',
    description: 'Organize a fitness scavenger hunt with sustainable prizes.',
    time: 60,
    calories: 300,
  ),
  EcoCont(
    title: 'Solar-Charged Circuit Training',
    description:
        'Perform circuit training using solar-charged electronic devices.',
    time: 45,
    calories: 220,
  ),
  EcoCont(
    title: 'Conservation Meditation',
    description:
        'Meditate in a natural setting, focusing on conservation and gratitude.',
    time: 30,
    calories: 80,
  ),
  EcoCont(
    title: 'Green Roof Yoga',
    description:
        'Practice yoga on a green roof, surrounded by eco-friendly vegetation.',
    time: 40,
    calories: 120,
  ),
  EcoCont(
    title: 'Eco-Friendly Family Relay',
    description:
        'Organize a relay race with eco-friendly challenges for the whole family.',
    time: 60,
    calories: 350,
  ),
  EcoCont(
    title: 'Sustainable Swim Session',
    description:
        'Swim in a natural body of water, emphasizing environmental awareness.',
    time: 45,
    calories: 250,
  ),
  EcoCont(
    title: 'Eco-Conscious Kayaking',
    description:
        'Kayak in eco-friendly locations while collecting floating debris.',
    time: 60,
    calories: 300,
  ),
  EcoCont(
    title: 'Paddleboard Pollution Cleanup',
    description: 'Stand-up paddleboard while collecting litter from the water.',
    time: 45,
    calories: 220,
  ),
  EcoCont(
    title: 'Bike-Powered Movie Night',
    description:
        'Pedal on a stationary bike to generate power for an outdoor movie night.',
    time: 60,
    calories: 180,
  ),
  EcoCont(
    title: 'Eco-Friendly Bodyweight Blast',
    description:
        'Perform a high-intensity bodyweight workout using minimal equipment.',
    time: 30,
    calories: 200,
  ),
  EcoCont(
    title: 'Ocean Cleanup Dive',
    description:
        'Scuba dive in designated cleanup areas to remove underwater debris.',
    time: 60,
    calories: 400,
  ),
  EcoCont(
    title: 'Sustainable Sports Day',
    description:
        'Organize a sports day with eco-friendly games and activities.',
    time: 60,
    calories: 300,
  ),
  EcoCont(
    title: 'Zero-Waste Zumba',
    description:
        'Dance to lively music while emphasizing zero-waste principles.',
    time: 45,
    calories: 250,
  ),
  EcoCont(
    title: 'Sustainable Snorkeling Adventure',
    description:
        'Snorkel in eco-friendly locations while collecting marine litter.',
    time: 60,
    calories: 350,
  ),
  EcoCont(
    title: 'Eco-Friendly Team Trek',
    description:
        'Form teams for an eco-friendly hike, with each team responsible for waste collection.',
    time: 45,
    calories: 200,
  ),
  EcoCont(
    title: 'Beachfront Biking Challenge',
    description:
        'Bike along the beach, stopping to pick up trash and recyclables.',
    time: 60,
    calories: 300,
  ),
  EcoCont(
    title: 'Eco-Run Relay',
    description: 'Organize a relay race with eco-friendly running challenges.',
    time: 60,
    calories: 350,
  ),
  EcoCont(
    title: 'Plogging Plank Challenge',
    description:
        'Combine jogging with intermittent planks, picking up trash during breaks.',
    time: 45,
    calories: 220,
  ),
  EcoCont(
    title: 'Eco-Friendly Forest Workout',
    description:
        'Perform a full-body workout in a forest, appreciating natures beauty.',
    time: 60,
    calories: 300,
  ),
  EcoCont(
    title: 'Conservation Cycling Tour',
    description:
        'Cycle through eco-friendly sites, promoting conservation awareness.',
    time: 60,
    calories: 350,
  ),
  EcoCont(
    title: 'Sustainable Strength Yoga',
    description:
        'Integrate strength-building yoga poses with eco-conscious intentions.',
    time: 45,
    calories: 180,
  ),
  EcoCont(
    title: 'Eco-Friendly Family Fitness',
    description:
        'Engage in various eco-friendly activities with family, promoting fitness and environmental awareness.',
    time: 60,
    calories: 300,
  ),
  EcoCont(
    title: 'Solar-Powered Soccer Tournament',
    description: 'Host a soccer tournament with goals powered by solar energy.',
    time: 60,
    calories: 350,
  ),
  EcoCont(
    title: 'Earth Day HIIT',
    description:
        'High-intensity interval training with exercises inspired by Earth Day themes.',
    time: 30,
    calories: 250,
  ),
  EcoCont(
    title: 'Eco-Friendly Adventure Race',
    description:
        'Organize an adventure race with eco-friendly challenges, from biking to kayaking.',
    time: 50,
    calories: 400,
  ),
  EcoCont(
    title: 'Sustainable Social Distance Workout',
    description:
        'Enjoy a solo workout outdoors, maintaining social distance and adhering to sustainable practices.',
    time: 45,
    calories: 220,
  ),
  EcoCont(
    title: 'Recycle Relay Run',
    description:
        'Organize a relay run with participants passing recyclables instead of a baton.',
    time: 45,
    calories: 250,
  ),
  EcoCont(
    title: 'Eco-Friendly Bootcamp',
    description:
        'Intensive bootcamp workout with eco-friendly twists and challenges.',
    time: 45,
    calories: 280,
  ),
  EcoCont(
    title: 'Natures Yoga Retreat',
    description:
        'A yoga session conducted in a natural setting, fostering a connection with the environment.',
    time: 60,
    calories: 120,
  ),
  EcoCont(
    title: 'Clean Energy Cycling',
    description:
        'Cycle using bikes equipped with clean energy generators, contributing to a cleaner environment.',
    time: 45,
    calories: 300,
  ),
  EcoCont(
    title: 'Eco-Awareness Dance Party',
    description:
        'Dance to eco-conscious beats, spreading awareness through movement.',
    time: 60,
    calories: 350,
  ),
  EcoCont(
    title: 'Sustainable Stretching Session',
    description: 'A stretching routine using recycled yoga mats and props.',
    time: 30,
    calories: 100,
  ),
  EcoCont(
    title: 'Eco-Friendly Adventure Hike',
    description:
        'Hike through nature with adventure challenges focused on sustainability.',
    time: 60,
    calories: 300,
  ),
  EcoCont(
    title: 'Pedal-Powered Picnic',
    description:
        'Cycle to a picnic spot, powering a blender for smoothies with a pedal generator.',
    time: 40,
    calories: 180,
  ),
  EcoCont(
    title: 'Green Gardening Group Workout',
    description:
        'A group workout session in a community garden, tending to plants between exercises.',
    time: 60,
    calories: 250,
  ),
  EcoCont(
    title: 'Eco-Friendly Fitness Flash Mob',
    description:
        'Organize a fitness flash mob with eco-friendly themes, surprising and engaging passersby.',
    time: 30,
    calories: 150,
  ),
  EcoCont(
    title: 'Sustainable Stand-Up Paddleboard',
    description:
        'Paddleboard on bodies of water while collecting floating debris, emphasizing sustainability.',
    time: 60,
    calories: 350,
  ),
];
