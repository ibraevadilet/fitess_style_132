class EcoCont {
  final String title;
  final String description;
  final double time;
  final int calories;
  final DateTime? dateSaved;

  EcoCont({
    required this.title,
    required this.description,
    required this.time,
    required this.calories,
    this.dateSaved,
  });
}

List<EcoCont> listPositive = [
  EcoCont(
    title: 'Morning Sunshine Stretch',
    description:
        'Start your day with 10 minutes of gentle stretching and deep breathing to welcome positivity.',
    time: 10,
    calories: 40,
  ),
  EcoCont(
    title: 'Grateful Heart Cardio',
    description:
        'Engage in 20 minutes of heart-pumping cardio while focusing on gratitude for an uplifting workout.',
    time: 20,
    calories: 150,
  ),
  EcoCont(
    title: 'Smile-Inducing Yoga Flow',
    description:
        'Flow through a series of yoga poses with a focus on uplifting thoughts and smiles.',
    time: 15,
    calories: 80,
  ),
  EcoCont(
    title: 'Joyful Dance Party',
    description:
        'Dance to your favorite upbeat tunes for 15 minutes to enhance joy and burn calories.',
    time: 15,
    calories: 120,
  ),
  EcoCont(
    title: 'Positive Affirmation Run',
    description:
        'Run with positive affirmations for 30 minutes to boost mood and endurance.',
    time: 30,
    calories: 250,
  ),
  EcoCont(
    title: 'Laughter-Filled Zumba',
    description:
        'Join a Zumba class or follow an online routine for a laughter-filled cardio workout.',
    time: 25,
    calories: 180,
  ),
  EcoCont(
    title: 'Sunlit Mindfulness Walk',
    description:
        'Take a leisurely walk outdoors, soaking in the sunlight and practicing mindful breathing.',
    time: 40,
    calories: 180,
  ),
  EcoCont(
    title: 'Feel-Good Hula Hooping',
    description:
        'Hula hoop for 20 minutes with a focus on enjoying the movement and feeling good.',
    time: 20,
    calories: 100,
  ),
  EcoCont(
    title: 'Uplifting Cycling Adventure',
    description:
        'Cycle through scenic routes, appreciating the beauty around, for 45 minutes of positive vibes.',
    time: 45,
    calories: 300,
  ),
  EcoCont(
    title: 'Positivity Power Walk',
    description:
        'Power walk with upbeat music and positive mantras for 30 minutes.',
    time: 30,
    calories: 200,
  ),
  EcoCont(
    title: 'Cheerful Kickboxing Routine',
    description:
        'Kickboxing workout with high-energy moves and a focus on cheerfulness.',
    time: 25,
    calories: 200,
  ),
  EcoCont(
    title: 'Happy Hiking Adventure',
    description:
        'Explore nature with a joyful hike, focusing on the positive aspects of the surroundings.',
    time: 60,
    calories: 400,
  ),
  EcoCont(
    title: 'Optimistic Rowing Session',
    description:
        'Rowing workout with an optimistic mindset for a full-body positive exercise.',
    time: 30,
    calories: 250,
  ),
  EcoCont(
    title: 'Positive Visualization Swim',
    description:
        'Swim while visualizing positive outcomes and accomplishments for a motivational workout.',
    time: 40,
    calories: 300,
  ),
  EcoCont(
    title: 'Radiant Resistance Training',
    description:
        'Strength training routine with a focus on feeling radiant and powerful.',
    time: 35,
    calories: 220,
  ),
  EcoCont(
    title: 'Heartwarming Elliptical Exercise',
    description:
        'Elliptical workout with heartwarming affirmations for a positive energy boost.',
    time: 25,
    calories: 180,
  ),
  EcoCont(
    title: 'Feel-Alive Jump Rope',
    description:
        'Jump rope with enthusiasm for 15 minutes to feel alive and invigorated.',
    time: 15,
    calories: 100,
  ),
  EcoCont(
    title: 'Positive Vibes Bike Ride',
    description:
        'Bike through scenic routes, absorbing positive vibes from the environment, for 40 minutes.',
    time: 40,
    calories: 250,
  ),
  EcoCont(
    title: 'Elevated Energy HITT',
    description:
        'High-Intensity Interval Training (HITT) with a focus on boosting energy levels.',
    time: 20,
    calories: 180,
  ),
  EcoCont(
    title: 'Optimism Overhead Press',
    description:
        'Overhead press workout with a positive attitude towards strength and capability.',
    time: 30,
    calories: 180,
  ),
  EcoCont(
    title: 'Mood-Boosting Bodyweight Exercises',
    description:
        'Perform a series of bodyweight exercises with a smile for 25 minutes.',
    time: 25,
    calories: 150,
  ),
  EcoCont(
    title: 'Happy Meditation Session',
    description:
        'Combine meditation with positive affirmations for a calming yet uplifting experience.',
    time: 15,
    calories: 30,
  ),
  EcoCont(
    title: 'Radiate Positivity Plank Challenge',
    description:
        'Plank variations with a focus on radiating positivity and strength.',
    time: 15,
    calories: 80,
  ),
  EcoCont(
    title: 'Euphoric Body Scan Yoga',
    description:
        'Yoga session with a body scan technique, focusing on euphoric sensations.',
    time: 20,
    calories: 90,
  ),
  EcoCont(
    title: 'Feel-Great Kettlebell Swings',
    description:
        'Kettlebell swings with the intention of feeling great and powerful.',
    time: 20,
    calories: 150,
  ),
  EcoCont(
    title: 'Optimistic Obstacle Course',
    description:
        'Create a simple obstacle course at home, complete it with optimism and determination.',
    time: 30,
    calories: 200,
  ),
  EcoCont(
    title: 'Happy High-Intensity Dance',
    description: 'High-intensity dance workout with an emphasis on happiness.',
    time: 30,
    calories: 250,
  ),
  EcoCont(
    title: 'Positivity Pyramid Run',
    description:
        'Pyramid-style running routine with positive visualizations for motivation.',
    time: 40,
    calories: 300,
  ),
  EcoCont(
    title: 'Gratitude Push-Up Challenge',
    description:
        'Perform push-ups with a focus on gratitude for strength and resilience.',
    time: 20,
    calories: 120,
  ),
  EcoCont(
    title: 'Feel-Good Lunge Circuit',
    description:
        'Lunge circuit with a positive mindset, focusing on feeling good throughout the workout.',
    time: 25,
    calories: 150,
  ),
  EcoCont(
    title: 'Optimism Overhead Squats',
    description:
        'Overhead squat routine with a positive outlook towards strength and flexibility.',
    time: 30,
    calories: 180,
  ),
  EcoCont(
    title: 'Joyful Cardio Burst',
    description:
        'Dance to your favorite upbeat music for 20 minutes, combining high-energy movements with moments of pure joy.',
    time: 20,
    calories: 150,
  ),
  EcoCont(
    title: 'Gratitude Walk and Talk',
    description:
        'Take a brisk walk while expressing gratitude out loud, spreading positivity with each step.',
    time: 30,
    calories: 200,
  ),
  EcoCont(
    title: 'Happy Hula Hooping',
    description:
        'Grab a hula hoop and sway to lively music for 15 minutes, boosting your mood and core strength.',
    time: 15,
    calories: 100,
  ),
  EcoCont(
    title: 'Uplifting Yoga Flow',
    description:
        'Flow through a series of sun salutations and heart-opening poses, focusing on positive intentions.',
    time: 25,
    calories: 120,
  ),
];

List<EcoCont> listNeutral = [
  EcoCont(
    title: 'Balanced Breathing',
    description:
        'Practice rhythmic breathing, inhaling for four counts and exhaling for four counts, for 10 minutes',
    time: 10,
    calories: 40,
  ),
  EcoCont(
    title: 'Neutral Yoga Flow',
    description:
        'A gentle yoga sequence incorporating neutral poses to promote overall well-being.',
    time: 20,
    calories: 80,
  ),
  EcoCont(
    title: 'Steady-State Jog',
    description:
        'Maintain a moderate pace while jogging for 30 minutes to keep a neutral mood.',
    time: 30,
    calories: 200,
  ),
  EcoCont(
    title: 'Walking Meditation',
    description:
        'Take a slow, mindful walk, focusing on each step and your surroundings.',
    time: 15,
    calories: 50,
  ),
  EcoCont(
    title: 'Body Scan Relaxation',
    description:
        'Lie down and mentally scan your body, releasing tension in each muscle group.',
    time: 15,
    calories: 30,
  ),
  EcoCont(
    title: 'Mindful Weight Circuit',
    description:
        'Perform a circuit of light weight exercises with a focus on controlled movements.',
    time: 25,
    calories: 120,
  ),
  EcoCont(
    title: 'Nature Walk',
    description:
        'Enjoy a calming walk in nature, observing the environment without specific exercise goals.',
    time: 45,
    calories: 150,
  ),
  EcoCont(
    title: 'Basic Pilates Routine',
    description:
        'Engage in foundational Pilates exercises for core strength and stability.',
    time: 20,
    calories: 90,
  ),
  EcoCont(
    title: 'Gentle Swim',
    description:
        'Swim at a leisurely pace, focusing on the rhythmic movement for relaxation.',
    time: 30,
    calories: 180,
  ),
  EcoCont(
    title: 'Moderate Cycling',
    description:
        'Cycle at a moderate speed, enjoying the rhythmic motion without pushing intensity.',
    time: 40,
    calories: 250,
  ),
  EcoCont(
    title: 'Neutral Mood Hike',
    description:
        'Take a neutral-paced hike, appreciating the scenery and maintaining a steady pace.',
    time: 60,
    calories: 300,
  ),
  EcoCont(
    title: 'Restorative Yoga Session',
    description:
        'Embrace restorative yoga poses with longer holds for deep relaxation.',
    time: 30,
    calories: 70,
  ),
  EcoCont(
    title: 'Easygoing Elliptical',
    description:
        'Use the elliptical machine at a comfortable pace, focusing on smooth movements.',
    time: 25,
    calories: 100,
  ),
  EcoCont(
    title: 'Qi Gong Practice',
    description:
        'Engage in Qi Gong exercises for balance, energy flow, and a neutral state of mind.',
    time: 15,
    calories: 50,
  ),
  EcoCont(
    title: 'Grounding Meditation',
    description:
        'Sit comfortably, focusing on your breath and grounding exercises for mental clarity.',
    time: 10,
    calories: 20,
  ),
  EcoCont(
    title: 'Yin Yoga for Neutrality',
    description:
        'Yin yoga poses held for an extended period to enhance flexibility and neutrality.',
    time: 45,
    calories: 80,
  ),
  EcoCont(
    title: 'Calming Rowin',
    description:
        'Row at a calm pace, feeling the resistance without pushing for intensity.',
    time: 20,
    calories: 120,
  ),
  EcoCont(
    title: 'Floating on Clouds',
    description:
        'Lie on your back, imagining yourself floating on clouds, practicing deep breathing.',
    time: 15,
    calories: 30,
  ),
  EcoCont(
    title: 'Mindful Stair Climb',
    description:
        'Climb stairs at a moderate pace, focusing on each step and maintaining a neutral mood.',
    time: 15,
    calories: 70,
  ),
  EcoCont(
    title: 'Chill Out Chill Flow',
    description:
        'Slow, chilled-out yoga flow incorporating soothing stretches for overall relaxation.',
    time: 25,
    calories: 60,
  ),
  EcoCont(
    title: 'Zen Garden Meditation',
    description:
        'Visualize a serene Zen garden while practicing seated meditation for a neutral mind.',
    time: 15,
    calories: 30,
  ),
  EcoCont(
    title: 'Breath and Balance',
    description:
        'Combine deep breathing with simple balance exercises for mental focus.',
    time: 20,
    calories: 40,
  ),
  EcoCont(
    title: 'Soothing Swaying',
    description:
        'Sway gently side to side while standing, promoting a sense of calmness.',
    time: 10,
    calories: 20,
  ),
  EcoCont(
    title: 'Neutral Mood Dance',
    description:
        'Dance to neutral-paced music, focusing on the enjoyment of movement.',
    time: 30,
    calories: 150,
  ),
  EcoCont(
    title: 'Floatation Tank Visualization',
    description:
        'Imagine floating in a sensory deprivation tank during a guided visualization session.',
    time: 20,
    calories: 30,
  ),
  EcoCont(
    title: 'Neutral Mind Body Scan',
    description:
        'Practice a body scan meditation without focusing on specific emotions.',
    time: 15,
    calories: 30,
  ),
  EcoCont(
    title: 'Gentle Aerial Yoga',
    description:
        'Aerial yoga session with gentle inversions and stretches for a neutral mood.',
    time: 30,
    calories: 120,
  ),
  EcoCont(
    title: 'Breathe and Bike',
    description:
        'Casual bike ride with a focus on rhythmic breathing and enjoyment.',
    time: 40,
    calories: 180,
  ),
  EcoCont(
    title: 'Restful Resistance Training',
    description:
        'Light resistance training with a focus on controlled movements and relaxation.',
    time: 25,
    calories: 90,
  ),
  EcoCont(
    title: 'Mindful Movement Massage',
    description:
        'Perform gentle self-massage techniques while focusing on the present moment.',
    time: 20,
    calories: 40,
  ),
  EcoCont(
    title: 'Peaceful Plunge',
    description:
        'Dive into a pool and float peacefully, allowing the water to induce a calm state.',
    time: 30,
    calories: 120,
  ),
  EcoCont(
    title: 'Neutral Mood Walk-and-Talk',
    description:
        'Go for a walk while engaging in a neutral, reflective self-talk session.',
    time: 45,
    calories: 200,
  ),
  EcoCont(
    title: 'Easygoing Climbing',
    description:
        'Indoor climbing at a relaxed pace, enjoying the ascent without pushing limits.',
    time: 30,
    calories: 150,
  ),
  EcoCont(
    title: 'Mindful Forest Bathing',
    description:
        'Take a slow, intentional walk in a forest, immersing yourself in nature.',
    time: 60,
    calories: 180,
  ),
  EcoCont(
    title: 'Comfortable Cardio Combo',
    description:
        'A mix of low-impact cardio exercises to maintain a comfortable and neutral pace.',
    time: 40,
    calories: 170,
  ),
];

List<EcoCont> listBad = [
  EcoCont(
    title: 'Calm the Storm Yoga',
    description:
        'Gentle yoga poses with a focus on deep breathing to soothe a restless mind.',
    time: 15,
    calories: 60,
  ),
  EcoCont(
    title: 'Release and Relax Stretching',
    description:
        'Slow and deliberate stretches to release tension and promote relaxation.',
    time: 10,
    calories: 40,
  ),
  EcoCont(
    title: 'Mindful Walking Meditation',
    description:
        'Walk slowly and mindfully, focusing on each step to clear your mind.',
    time: 20,
    calories: 80,
  ),
  EcoCont(
    title: 'Breathe Out the Blues Cardio',
    description:
        'Cardio routine with emphasis on deep exhalations to release negative energy.',
    time: 25,
    calories: 150,
  ),
  EcoCont(
    title: 'Emotional Release Dance',
    description:
        'Dance freely to expressive music, allowing emotions to flow and dissipate.',
    time: 30,
    calories: 180,
  ),
  EcoCont(
    title: 'Inner Peace Meditation',
    description:
        'Guided meditation to find inner peace and calm negative emotions.',
    time: 15,
    calories: 30,
  ),
  EcoCont(
    title: 'Punch It Out Kickboxing',
    description:
        'Kickboxing routine to release frustration and anger through controlled movements.',
    time: 20,
    calories: 120,
  ),
  EcoCont(
    title: 'Positive Affirmation Pilates',
    description:
        'Pilates session with positive affirmations for a mental and physical boost.',
    time: 25,
    calories: 100,
  ),
  EcoCont(
    title: 'Nature Connection Walk',
    description:
        'Walk in nature, focusing on the surroundings to lift your mood.',
    time: 40,
    calories: 150,
  ),
  EcoCont(
    title: 'Heart-Healing Hatha Yoga',
    description:
        'Hatha yoga sequence emphasizing heart-opening poses for emotional healing.',
    time: 20,
    calories: 70,
  ),
  EcoCont(
    title: 'Stress-Relief Tai Chi',
    description:
        'Slow and flowing Tai Chi movements to release stress and tension.',
    time: 15,
    calories: 50,
  ),
  EcoCont(
    title: 'Gentle Evening Bike Ride',
    description: 'Leisurely bike ride to clear your mind during the evening.',
    time: 30,
    calories: 120,
  ),
  EcoCont(
    title: 'Quiet Reflection Rowing',
    description:
        'Rowing session with moments of quiet reflection for mental clarity.',
    time: 25,
    calories: 90,
  ),
  EcoCont(
    title: 'Mindful Body Scan Meditation',
    description:
        'Guided body scan meditation to promote awareness and release tension.',
    time: 15,
    calories: 20,
  ),
  EcoCont(
    title: 'Candlelit Restorative Yoga',
    description:
        'Restorative yoga poses in a calming candlelit setting for deep relaxation.',
    time: 30,
    calories: 40,
  ),
  EcoCont(
    title: 'Soothing Sea Sounds Swim',
    description:
        'Swim with the soothing sounds of the sea to ease a troubled mind.',
    time: 20,
    calories: 100,
  ),
  EcoCont(
    title: 'Rainy Day Indoor Walk',
    description:
        'Walk indoors while listening to the sound of rain to create a calming atmosphere.',
    time: 45,
    calories: 80,
  ),
  EcoCont(
    title: 'Grounding Mindfulness Circuit',
    description:
        'Circuit training with grounding exercises for a centered and balanced feeling.',
    time: 20,
    calories: 110,
  ),
  EcoCont(
    title: 'Quiet Contemplation Run',
    description:
        'Run at a moderate pace while reflecting on positive thoughts for mental clarity.',
    time: 30,
    calories: 200,
  ),
  EcoCont(
    title: 'Peaceful Paddleboard Session',
    description: 'Tranquil paddleboarding for a calming workout on the water.',
    time: 40,
    calories: 180,
  ),
  EcoCont(
    title: 'Healing Crystal Meditation',
    description:
        'Meditate with healing crystals to promote emotional balance and clarity.',
    time: 15,
    calories: 30,
  ),
  EcoCont(
    title: 'Soothing Scented Candle Yoga',
    description:
        'Yoga session in a room with scented candles to enhance relaxation.',
    time: 25,
    calories: 50,
  ),
  EcoCont(
    title: 'Empathy Walk-and-Talk',
    description:
        'Brisk walk while practicing empathy and understanding towards others.',
    time: 35,
    calories: 120,
  ),
  EcoCont(
    title: 'Mindful Breathing Bench Workout',
    description:
        'Simple bench exercises with a focus on mindful breathing for stress relief.',
    time: 20,
    calories: 80,
  ),
  EcoCont(
    title: 'Reflection and Release Swim',
    description:
        'Swim with moments of reflection and release to let go of negativity.',
    time: 25,
    calories: 150,
  ),
  EcoCont(
    title: 'Calm Mind Elliptical',
    description:
        'Elliptical workout with a focus on calm and controlled movements.',
    time: 30,
    calories: 130,
  ),
  EcoCont(
    title: 'Ocean Waves Meditation',
    description:
        'Guided meditation with sounds of ocean waves for a calming experience.',
    time: 15,
    calories: 20,
  ),
  EcoCont(
    title: 'Mindful Balance Board Exercises',
    description: 'Balance board exercises for a mindful and focused workout.',
    time: 20,
    calories: 90,
  ),
  EcoCont(
    title: 'Soothing Sunset Stretches',
    description:
        'Gentle stretches while watching the sunset for a serene workout.',
    time: 25,
    calories: 40,
  ),
  EcoCont(
    title: 'Soulful Strength Training',
    description:
        'Strength training routine with a focus on connecting with your inner self.',
    time: 30,
    calories: 160,
  ),
  EcoCont(
    title: 'Mindful Forest Bathing Walk',
    description:
        'Walk in the forest, engaging all senses for a rejuvenating experience.',
    time: 40,
    calories: 110,
  ),
  EcoCont(
    title: 'Calm and Centered Climbing',
    description:
        'Indoor climbing session with a focus on staying calm and centered.',
    time: 25,
    calories: 180,
  ),
  EcoCont(
    title: 'Revitalizing Meditation Run',
    description:
        'Run with intermittent meditation breaks for mental and physical revitalization.',
    time: 35,
    calories: 220,
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
