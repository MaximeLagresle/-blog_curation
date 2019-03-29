puts 'Cleaning database'

User.destroy_all
Blog.destroy_all
Post.destroy_all

puts 'Creating database'

#Blog 1: a16z

a16z = Blog.create(
  name: 'a16z',
  url: 'https://a16z.com/feed/',
  description: 'Founded in 2009 by Marc Andreessen and Ben Horowitz, Andreessen Horowitz (known as "a16z") is a venture capital firm in Silicon Valley, California that backs bold entrepreneurs building the future through technology. We are stage agnostic: We invest in seed to late-stage companies, and both consumer and enterprise technology companies.',
  tag: 'growth strategy'
)

#Blog 2: intercom

intercom = Blog.create(
  name: 'intercom',
  url: 'https://www.intercom.com/blog/feed',
  description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
  tag: 'growth strategy'
)

#Post 1: a16z

post_1_a16z = Post.create(
  title: 'Marketplaces, Pietra, and the Network Effects of Next Startup Talent',
  url: 'https://a16z.com/2019/03/27/marketplaces-network-effects-next-startup-talent-pietra/',
  description: 'One of my focus areas as an investor is marketplaces, because I’ve seen firsthand how they can transform an industry — especially when they also have network effects that can lead to huge scale and impact.',
  blog: a16z
)

#Post 2: a16z

post_2_a16z = Post.create(
  title: 'a16z Podcast: Incenting Innovation Inside',
  url: 'https://a16z.com/2019/03/24/loonshots-moonshots-incentives-org-innovation-big-small-phase-transitions/',
  description: 'A “moonshot” is a destination (like going to the moon, quite literally) — but nurturing “loonshots” (which often involves a number of stumbles along the way) is how we get there.',
  blog: a16z
)

#Post 1: intercom

post_1_intercom = Post.create(
  title: 'How to maintain high quality conversations with your customers at scale',
  url: 'https://www.intercom.com/blog/how-to-maintain-high-quality-conversations-with-your-customers-at-scale/',
  description: 'Building great relationships with your customers and offering them world-class support depends on a lot of things, but one of the most important is the quality of the conversations you have with them.',
  blog: intercom
)

#Post 2: intercom

post_2_intercom = Post.create(
  title: 'Expand your addressable market to drive your next wave of growth',
  url: 'https://www.intercom.com/blog/how-to-expand-your-addressable-market/',
  description: 'During your first wave of growth, your initial customers are very important. You have to build a product that solves a problem and works well for them.',
  blog: intercom
)

puts 'Finished'
