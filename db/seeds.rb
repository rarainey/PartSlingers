# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

admin1 = User.create!(
  email:    'bob@email.com',
  password: 'password',
  admin_status: true
)

# GPUs
gpu1 = Item.create!(
    price: 1699.99,
    title: "Gigabyte GAMING OC GeForce RTX 4090 24 GB Video Card",
    description: "Ahead of its time, ahead of the game is the GIGABYTE GeForce RTX 4090 GAMING OC 24G Graphics Cards. Powered by NVIDIA's new RTX architecture and refined with WINDFORCE cooling technology, the GIGABYTE GeForce RTX 4090 GAMING OC 24G brings stunning visuals, amazingly fast frame rates, and AI acceleration to games and creative applications with its enhanced RT Cores and Tensor Cores, along with a staggering 24 GB of G6X memory.",
    brand: 'Gigabyte',
    wattage: 450,
    category: 'GPU',
    for_sale: true,
    gpu_rank: 1
)
gpu1.picture.attach(io: File.open("app/assets/images/GPU/4090.jpg"), filename: "4090.jpg")

gpu2 = Item.create!(
    price: 1199.99,
    title: "Asus TUF GAMING GeForce RTX 4080 16 GB Video Card",
    description: "The ASUS TUF Gaming GeForce RTX™ 4080 has been redesigned to house the all-new Ada Lovelace architecture, from NVIDIA. With up to 2x the performance of the previous generation and an all-new design, the ASUS TUF Gaming GeForce RTX™ 4080 will provide your next unparalleled gaming experience.",
    brand: 'Asus',
    wattage: 320,
    category: 'GPU',
    for_sale: true,
    gpu_rank: 2
)
gpu2.picture.attach(io: File.open("app/assets/images/GPU/4080.jpg"), filename: "4080.jpg")

gpu3 = Item.create!(
    price: 849.00,
    title: "MSI GAMING X TRIO GeForce RTX 4070 Ti 12 GB Video Card",
    description: "The NVIDIA GeForce RTX 4070 Ti delivers the ultra performance and features that enthusiast gamers and creators demand. Bring your games and creative projects to life with ray tracing and AI-powered graphics. It’s powered by the ultra-efficient NVIDIA Ada Lovelace architecture and up to 12GB of superfast G6X memory.",
    brand: 'MSI',
    wattage: 285,
    category: 'GPU',
    for_sale: true,
    gpu_rank: 4
)
gpu3.picture.attach(io: File.open("app/assets/images/GPU/4070ti.jpg"), filename: "4070ti.jpg")

gpu4 = Item.create!(
    price: 549.99,
    title: "Gigabyte WINDFORCE OC GeForce RTX 4070 12 GB Video Card",
    description: "Powered by NVIDIA DLSS 3, ultra-efficient Ada Lovelace architechture, and full ray tracing 4th Generation Tensor Cores: Up to 4x performance with DLSS 3 3rd Generation RT Cores: Up to 2x ray tracing performance Powered by GeForce RTX 4070 Integrated with 12GB GDDR6X 192-bit memory interface WINDFORCE Cooling System, RGB Fusion, Dual BIOS, Protection metal back plate, Anti-Sag Bracket. Ahead of its time, ahead of the game is the GIGABYTE GeForce RTX 4070 WINDFORCE OC 12G Graphics Cards.",
    brand: 'Gigabyte',
    wattage: 200,
    category: 'GPU',
    for_sale: true,
    gpu_rank: 7
)
gpu4.picture.attach(io: File.open("app/assets/images/GPU/4070.jpg"), filename: "4070.jpg")

gpu5 = Item.create!(
    price: 299.00,
    title: "Asus DUAL OC GeForce RTX 4060 8 GB Video Card",
    description: "The ASUS Dual RTX 4060 OC edition has arrived! Loaded with the latest NVIDIA technologies such as DLSS 3 and RTX ray tracing this GPU will provide excellent performance for those looking to build the perfect entry-level PC. Upgraded with the latest Axial tech and Dual Ball bearing fans, this card provides longevity and durability.",
    brand: 'Asus',
    wattage: 115,
    category: 'GPU',
    for_sale: true,
    gpu_rank: 9
)
gpu5.picture.attach(io: File.open("app/assets/images/GPU/4060.jpg"), filename: "4060.jpg")

gpu6 = Item.create!(
    price: 939.99,
    title: "XFX Speedster MERC 310 Black Edition Radeon RX 7900 XTX 24 GB Video Card",
    description: "The XFX AMD Radeon RX 7000 Series graphics cards, featuring the groundbreaking AMD RDNA 3 architecture, deliver ultra-high frame rates for your favorite games at 4K max settings.",
    brand: 'XFX',
    wattage: 355,
    category: 'GPU',
    for_sale: true,
    gpu_rank: 3
)
gpu6.picture.attach(io: File.open("app/assets/images/GPU/7900XTX.jpg"), filename: "7900XTX.jpg")

gpu7 = Item.create!(
    price: 749.99,
    title: "Sapphire PULSE Radeon RX 7900 XT 20 GB Video Card",
    description: "The Sapphire Pulse 7900XT is a custom-build graphics card positioned in the middle of the product stack from Sapphire. It is one of the more affordable RX 7900 XT custom designs out there. The card has impressive 4K gaming performance and a triple-slot, triple-fan thermal solution that achieves amazing noise levels with good temperatures. The card performs on par with AMD's reference card, with slightly higher temperatures but a significantly better noise profile.",
    brand: 'Sapphire',
    wattage: 331,
    category: 'GPU',
    for_sale: true,
    gpu_rank: 5
)
gpu7.picture.attach(io: File.open("app/assets/images/GPU/7900XT.jpg"), filename: "7900XT.jpg")

gpu8 = Item.create!(
    price: 499.99,
    title: "Gigabyte GAMING OC Radeon RX 7800 XT 16 GB Video Card",
    description: "Powered by Radeon RX 7800 XT Integrated with 16GB GDDR6 256-bit memory interface WINDFORCE cooling system, RGB Fusion, Protection metal backplate. Experience incredible performance, visuals, and efficiency when gaming and streaming with the GIGABYTE Radeon RX 7800 XT GAMING OC 16G, powered by the AMD RDNA 3 architecture. The GIGABYTE Radeon RX 7800 XT GAMING OC 16G delivers an incredible high refresh 1440p gaming & streaming experience.",
    brand: 'Gigabyte',
    wattage: 263,
    category: 'GPU',
    for_sale: true,
    gpu_rank: 6
)
gpu8.picture.attach(io: File.open("app/assets/images/GPU/7800XT.jpg"), filename: "7800XT.jpg")

gpu9 = Item.create!(
    price: 429.99,
    title: "ASRock Challenger OC Radeon RX 7700 XT 12 GB Video Card",
    description: "Chip: Radeon / RX7700XT Memory: GDDR6 12 GB (192 bit memory bus). [Core clock] Boost 2,599 MHz Memory Clock: 18,000 MHz [I/F] PCI-Express x16 (4.0 compatible). Output: DisplayPort 1.4 x3, HDMI 2.1 x1. Auxiliary Power Supply: 8 Pin x 2 Board size: 10.5 x 5.1 x 2.0 inches (266 x 130 x 51",
    brand: 'ASRock',
    wattage: 245,
    category: 'GPU',
    for_sale: true,
    gpu_rank: 8
)
gpu9.picture.attach(io: File.open("app/assets/images/GPU/7700XT.jpg"), filename: "7700XT.jpg")

gpu10 = Item.create!(
    price: 269.99,
    title: "MSI MECH 2X CLASSIC OC Radeon RX 7600 8 GB Video Card",
    description: "The Radeon RX 7000 MECH series arms you for the final blow with a performance-focused design that retains the essentials to tackle any task at hand. Rocking a trusted dual fan arrangement laid into a rigid industrial design lets this sharp looking graphics card fit into any build. A clean-looking backplate reinforces the length of the card.",
    brand: 'MSI',
    wattage: 165,
    category: 'GPU',
    for_sale: true,
    gpu_rank: 10
)
gpu10.picture.attach(io: File.open("app/assets/images/GPU/7600.jpg"), filename: "7600.jpg")


# CPUs
cpu1 = Item.create!(
    price: 250.00,
    title: "Intel Core i5-13600KF 3.5 GHz 14-Core Processor",
    description: "13th Gen Intel Core i5-13600KF desktop processor, without processor graphics. Featuring PCIe 5.0 & 4.0 support, DDR5 and DDR4 support, unlocked 13th Gen Intel Core i5 desktop processors are optimized for gamers and productivity and help deliver high performance. Discrete graphics required. Thermal solution NOT included in the box. Compatible with Intel 700 Series and Intel 600 Series Chipset based motherboards. 125W Processor Base Power.",
    brand: 'Intel',
    wattage: 125,
    category: 'CPU',
    for_sale: true
)
cpu1.picture.attach(io: File.open("app/assets/images/CPU/13600KF.jpg"), filename: "13600KF.jpg")

cpu2 = Item.create!(
    price: 270.00,
    title: "Intel Core i5-13600K 3.5 GHz 14-Core Processor",
    description: "13th Gen Intel Core i5-13600K desktop processor. Featuring PCIe 5.0 & 4.0 support, DDR5 and DDR4 support, unlocked 13th Gen Intel Core i5 desktop processors are optimized for gamers and productivity and help deliver high performance. Compatible with Intel 700 Series and Intel 600 Series Chipset based motherboards. 125W Processor Base Power.",
    brand: 'Intel',
    wattage: 125,
    category: 'CPU',
    for_sale: true
)
cpu2.picture.attach(io: File.open("app/assets/images/CPU/13600K.jpg"), filename: "13600K.jpg")

cpu3 = Item.create!(
    price: 336.00,
    title: "Intel Core i7-13700KF 3.4 GHz 16-Core Processor",
    description: "13th Gen Intel Core i7-13700KF desktop processor, without processor graphics. Featuring Intel Turbo Boost Max Technology 3.0, and PCIe 5.0 & 4.0 support, DDR5 and DDR4 support, unlocked 13th Gen Intel Core i7 desktop processors are optimized for gamers and productivity and help deliver high performance. Discrete graphics required. Thermal solution NOT included in the box. Compatible with Intel 700 Series and Intel 600 Series Chipset based motherboards. 125W Processor Base Power.",
    brand: 'Intel',
    wattage: 125,
    category: 'CPU',
    for_sale: true
)
cpu3.picture.attach(io: File.open("app/assets/images/CPU/13700KF.jpg"), filename: "13700KF.jpg")

cpu4 = Item.create!(
    price: 345.00,
    title: "Intel Core i7-13700K 3.4 GHz 16-Core Processor",
    description: "13th Gen Intel Core i7-13900K desktop processor. Featuring Intel Turbo Boost Max Technology 3.0, and PCIe 5.0 & 4.0 support, DDR5 and DDR4 support, unlocked 13th Gen Intel Core i7 desktop processors are optimized for gamers and productivity and help deliver high performance. Compatible with Intel 700 Series and Intel 600 Series Chipset based motherboards. 125W Processor Base Power.",
    brand: 'Intel',
    wattage: 125,
    category: 'CPU',
    for_sale: true
)
cpu4.picture.attach(io: File.open("app/assets/images/CPU/13700K.jpg"), filename: "13700K.jpg")

cpu5 = Item.create!(
    price: 546.99,
    title: "Intel Core i9-13900K 3 GHz 24-Core Processor",
    description: "13th Gen Intel Core i9-13900K desktop processor. Featuring Intel Adaptive Boost Technology, Intel Thermal Velocity Boost, Intel Turbo Boost Max Technology 3.0, and PCIe 5.0 & 4.0 support, DDR5 and DDR4 support, unlocked 13th Gen Intel Core i9 desktop processors are optimized for enthusiast gamers and serious creators and help deliver high performance. Compatible with Intel 700 Series and Intel 600 Series Chipset based motherboards. 125W Processor Base Power.",
    brand: 'Intel',
    wattage: 125,
    category: 'CPU',
    for_sale: true
)
cpu5.picture.attach(io: File.open("app/assets/images/CPU/13900K.jpg"), filename: "13900K.jpg")

cpu6 = Item.create!(
    price: 199.00,
    title: "AMD Ryzen 5 7600 3.8 GHz 6-Core Processor",
    description: "Take your computing to the next level with the Ryzen 5 7600 3.6 GHz Six-Core AM5 Processor, which features six cores and 12 threads to help quickly load and multitask demanding applications. Designed for socket AM5 motherboards using the powerful Zen 4 architecture with the 5nm process, this Ryzen processor delivers significantly improved performance compared to its predecessor while maintaining high energy efficiency. With a base clock speed of 3.8 GHz and a max boost clock speed of 5.1 GHz in addition to 32MB of L3 cache, the Ryzen 5 7600 is built to deliver the power needed to smoothly handle tasks ranging from content creation to immersive gaming. You can boost performance further by overclocking this unlocked processor.",
    brand: 'AMD',
    wattage: 65,
    category: 'CPU',
    for_sale: true
)
cpu6.picture.attach(io: File.open("app/assets/images/CPU/7600.jpg"), filename: "7600.jpg")

cpu7 = Item.create!(
    price: 209.00,
    title: "AMD Ryzen 5 7600X 4.7 GHz 6-Core Processor",
    description: "AMD Ryzen 5 7000 7600X Hexa-core (6 Core) 4.70 GHz Processor, 32 MB L3 Cache, 6 MB L2 Cache, 64-bit Processing, 5.30 GHz Overclocking Speed, 5 nm, Socket AM5, Radeon Graphics Graphics, 105 W, 12 Threads",
    brand: 'AMD',
    wattage: 105,
    category: 'CPU',
    for_sale: true
)
cpu7.picture.attach(io: File.open("app/assets/images/CPU/7600X.jpg"), filename: "7600X.jpg")

cpu8 = Item.create!(
    price: 305.97,
    title: "AMD Ryzen 7 7700 3.6 GHz 8-Core Processor",
    description: "The Exceptional Gaming Processor Leading your team to victory shouldn't cost a fortune. This processor brings exceptional value, overclocking, and includes the AMD Wraith Prism cooler with RBG LED lighting.",
    brand: 'AMD',
    wattage: 65,
    category: 'CPU',
    for_sale: true
)
cpu8.picture.attach(io: File.open("app/assets/images/CPU/7700.jpg"), filename: "7700.jpg")

cpu9 = Item.create!(
    price: 389.00,
    title: "AMD Ryzen 9 7900X 4.7 GHz 12-Core Processor",
    description: "AMD Ryzen 9 7000 7900X Dodeca-core (12 Core) 4.70 GHz Processor, 64 MB L3 Cache, 12 MB L2 Cache, 64-bit Processing, 5.60 GHz Overclocking Speed, 5 nm, Socket AM5, Radeon Graphics Graphics, 170 W, 24 Threads",
    brand: 'AMD',
    wattage: 170,
    category: 'CPU',
    for_sale: true
)
cpu9.picture.attach(io: File.open("app/assets/images/CPU/7900X.jpg"), filename: "7900X.jpg")

cpu10 = Item.create!(
    price: 535.72,
    title: "AMD Ryzen 9 7950X 4.5 GHz 16-Core Processor",
    description: "AMD Ryzen 9 7950X Hexadeca-core (16 Core) 4.50 GHz Processor, 64 MB L3 Cache, 16 MB L2 Cache, 64-bit Processing, 5.70 GHz Overclocking Speed, 5 nm, Socket AM5, Radeon Graphics Graphics, 170 W, 32 Threads",
    brand: 'AMD',
    wattage: 170,
    category: 'CPU',
    for_sale: true
)
cpu10.picture.attach(io: File.open("app/assets/images/CPU/7950X.jpg"), filename: "7950X.jpg")


# Motherboards
motherboard1 = Item.create!(
    price: 999.99,
    title: "Gigabyte Z790 AORUS XTREME EATX LGA1700 Motherboard",
    description: "Equipped with Intel's LGA 1700 socket and Z790 chipset, you can leverage a wide range of Core, Celeron, and Pentium processors, enhancing performance and responsiveness. Four dual-channel DDR5 RAM slots enable you to install up to 192GB of memory to enhance multitasking and rendering speeds. Install an array of storage drives for your media assets and games with four SATA III and five M.2 PCIe interfaces. The AORUS XTREME X also has one PCIe 5.0 x16 and one PCIe 3.0 x16 (in x4 mode) expansion slot so you can equip your system with various graphics and utility cards. Dual Thunderbolt 4 ports allow you to send and receive data with speeds up to 40 Gb/s and support high-powered devices such as displays. Connect your low-powered peripherals such as mice, keyboards, and controllers to the AORUS XTREME with a series of USB 3.2 Gen 1 and Gen 2 ports which can also handle resource-demanding devices such as external drives, A/V interfaces, and more. You can also use Bluetooth 5.3 technology to support wireless devices for a true cable-free experience. Quickly access online assets with Wi-Fi 7 (802.11be) technology for wireless connectivity or use the wired 10 Gigabit and 2.5 Gigabit Ethernet ports for strong and reliable connections.",
    brand: 'Gigabyte',
    wattage: 100,
    category: 'Motherboard',
    for_sale: true
)
motherboard1.picture.attach(io: File.open("app/assets/images/Motherboard/Z790Aorus.jpg"), filename: "Z790Aorus.jpg")

motherboard2 = Item.create!(
    price: 299.99,
    title: "ASRock Z790 Taichi Lite EATX LGA1700 Motherboard",
    description: "The ASRock Z790 Taichi Lite LGA 1700 (14th,13th,12th Gen) DDR5 Intel Z790 SATA 6Gb/s Extended ATX Motherboard is a high-performance motherboard that supports the latest generation of processors. It features an extended ATX form factor and comes with a range of advanced features such as DDR5 memory support and SATA 6Gb/s connectivity.",
    brand: 'ASRock',
    wattage: 100,
    category: 'Motherboard',
    for_sale: true
)
motherboard2.picture.attach(io: File.open("app/assets/images/Motherboard/Z790Taichi.jpg"), filename: "Z790Taichi.jpg")

motherboard3 = Item.create!(
    price: 179.95,
    title: "MSI MAG B760M MORTAR WIFI Micro ATX LGA1700 Motherboard",
    description: "The MAG series motherboard fights alongside gamers in pursuit of honor. With added military-inspired elements in these gaming products, they were reborn as the symbol of sturdiness and durability. Extended heatsink enlarges the surface of heat dissipation, ensuring even high-end processors to run in full speed. M.2 Shield Frozr keeps M.2 SSDs safe while preventing throttling, making them run faster.",
    brand: 'MSI',
    wattage: 60,
    category: 'Motherboard',
    for_sale: true
)
motherboard3.picture.attach(io: File.open("app/assets/images/Motherboard/B760M.jpg"), filename: "B760M.jpg")

motherboard4 = Item.create!(
    price: 303.06,
    title: "Asus ROG STRIX B660-I GAMING WIFI Mini ITX LGA1700 Motherboard",
    description: "ASUS ROG STRIX B660-I GAMING WIFI is the perfect backbone for gamers who pursue ultimate performance out of Intel 12th Gen CPU mini-ITX PC build. With boosted power delivery and innovative cooling utilizing a skived-fin design, ROG STRIX B660-I GAMING WIFI is the perfect compact platform for your next gaming battle station.",
    brand: 'Asus',
    wattage: 30,
    category: 'Motherboard',
    for_sale: true
)
motherboard4.picture.attach(io: File.open("app/assets/images/Motherboard/B660-I.jpg"), filename: "B660-I.jpg")

motherboard5 = Item.create!(
    price: 109.99,
    title: "Asus PRIME H610M-A D4 Micro ATX LGA1700 Motherboard",
    description: "The ASUS PRIME H610M-A D4 LGA 1700 Micro-ATX Motherboard is a great choice for those looking to build their own PC. With its Intel H610 Chipset, LGA 1700 Socket, and Dual-Channel DDR4-3200 memory support, this motherboard offers excellent performance at an affordable price.",
    brand: 'Asus',
    wattage: 60,
    category: 'Motherboard',
    for_sale: true
)
motherboard5.picture.attach(io: File.open("app/assets/images/Motherboard/H610-A.jpg"), filename: "H610-A.jpg")

motherboard6 = Item.create!(
    price: 315.99,
    title: "NZXT N7 B650E ATX AM5 Motherboard",
    description: "Leverage the full value of your AMD Ryzen 7000 series CPU with the AMD B650 chipset. The N7 B650E features upgraded compatibility as well as N7 favorites.",
    brand: 'NZXT',
    wattage: 70,
    category: 'Motherboard',
    for_sale: true
)
motherboard6.picture.attach(io: File.open("app/assets/images/Motherboard/B650E.jpg"), filename: "B650E.jpg")

motherboard7 = Item.create!(
    price: 199.99,
    title: "Asus TUF GAMING B650-PLUS WIFI ATX AM5 Motherboard",
    description: "ASUS TUF GAMING B650-PLUS WIFI is designed with military-grade components and game-ready features to provide unwavering gaming stability with the latest AMD Ryzen 7000 series processors and combines them with game-ready features and proven durability. Engineered with military-grade components, an upgraded power solution and a comprehensive cooling system, this motherboard offers rock-solid, stable performance for marathon gaming. Aesthetically, ASUS TUF GAMING B650-PLUS WIFI sports the new TUF Gaming logo, and incorporates simple geometric design elements to reflect the dependability and stability that defines the TUF Gaming series.",
    brand: 'Asus',
    wattage: 70,
    category: 'Motherboard',
    for_sale: true
)
motherboard7.picture.attach(io: File.open("app/assets/images/Motherboard/B650-Plus.jpg"), filename: "B650-Plus.jpg")

motherboard8 = Item.create!(
    price: 239.99,
    title: "Asus ROG STRIX B650E-F GAMING WIFI ATX AM5 Motherboard",
    description: "ASUS ROG STRIX B650E-F GAMING WIFI motherboard is built for gamers who pursue optimal in-game experience with boosted power delivery and an optimized cooling design to maximize the demand for Ryzen 7000 series processors. Along with the latest Wi-Fi 6E, DDR5 Memory, and PCI Express® 5.0 for superfast data transfer, memory, and storage performance, ROG STRIX B650E-F GAMING WiFi is unmistakably ROG with its futuristic design elements, iridescent ROG logo, monochrome finish and Aura lighting that will give your build a subtle but vibrant look.",
    brand: 'Asus',
    wattage: 70,
    category: 'Motherboard',
    for_sale: true
)
motherboard8.picture.attach(io: File.open("app/assets/images/Motherboard/B650E-F.jpg"), filename: "B650E-F.jpg")

motherboard9 = Item.create!(
    price: 74.95,
    title: "MSI PRO A620M-E Micro ATX AM5 Motherboard",
    description: "The PRO Series is tailored to professionals from all walks of life. The lineup features impressive performance and high quality, while aiming to provide users incredible experience. Users who care about productivity and efficiency can definitely count on the MSI PRO Series to assist you with multitasking and increasing efficiency.",
    brand: 'MSI',
    wattage: 60,
    category: 'Motherboard',
    for_sale: true
)
motherboard9.picture.attach(io: File.open("app/assets/images/Motherboard/A620M-E.jpg"), filename: "A620M-E.jpg")

motherboard10 = Item.create!(
    price: 184.99,
    title: "ASRock B650M PG RIPTIDE WIFI Micro ATX AM5 Motherboard",
    description: "MFR-PART#: B650M PG RIPTIDE WIFI CPU:SUPPORT AMD AM5 RYZEN 7000 SERIES PROCESSORS CHIPSET:AMD B650; MEMORY:DUAL CHANNEL;4*DDR5;MAX 128GB; SLOT:1*PCIE4.0X16;1*PCIE4.0X16;2*PCIE3.0X1; GRAPHICS:INTEGRATED AMD RDNATM2 GRAPHICS(ACTUAL SUPPORTY VARY BY CPU);HDMI;DP AUDIO:7.1-CH HD AUDIO(REALTEK ALC897); LAN:DRAGON RTL8125BG; WIFI6E; BT STORAGE:2*M.2;4*SATA3; I/O:2*ANTENNA PORTS;1*HDMI;1*DP;1*RJ45; FORM FACTOR:MICRO ATX",
    brand: 'ASRock',
    wattage: 60,
    category: 'Motherboard',
    for_sale: true
)
motherboard10.picture.attach(io: File.open("app/assets/images/Motherboard/B650M.jpg"), filename: "B650M.jpg")


# PSUs
psu1 = Item.create!(
    price: 89.99,
    title: "Corsair CX550F 550 W 80+ Bronze Certified Fully Modular ATX Power Supply",
    description: "CORSAIR CX-550F RGB Series fully modular power supplies deliver reliable 80 PLUS Bronze efficient power to your system, alongside vibrant customizable lighting from a 120mm RGB fan and a clean aesthetic.",
    brand: 'Corsair',
    wattage: 550,
    category: 'PSU',
    for_sale: true
)
psu1.picture.attach(io: File.open("app/assets/images/PSU/CX550F.jpg"), filename: "DX550F.jpg")

psu2 = Item.create!(
    price: 114.99,
    title: "Corsair RM550x 550 W 80+ Gold Certified Fully Modular ATX Power Supply",
    description: "Corsair RMx series power supplies give you extremely tight voltage control, quiet operation, Gold-certified efficiency, and a fully modular cable set. Built with all Japanese 105°C capacitors, they’re a great choice for high performance PCs where reliability is essential. 80 PLUS Gold efficiency reduces operating cost and excess heat, and Zero RPM fan mode ensures virtual silence at low and medium loads. And, the fully modular DC cables make builds and upgrades easy, with clean, great-looking results.",
    brand: 'Corsair',
    wattage: 550,
    category: 'PSU',
    for_sale: true
)
psu2.picture.attach(io: File.open("app/assets/images/PSU/RM550x.jpg"), filename: "RM550x.jpg")

psu3 = Item.create!(
    price: 99.99,
    title: "ADATA XPG Core Reactor II 650 W 80+ Gold Certified Fully Modular ATX Power Supply",
    description: "The XPG CORE REACTOR is a modular, 80 Plus Gold power supply unit equipped with 100% Japanese capacitors. Combined with Line Level Control (LLC) resonant topology, it is power-efficient, reliable and makes creating a tidy build easy.",
    brand: 'XPG',
    wattage: 650,
    category: 'PSU',
    for_sale: true
)
psu3.picture.attach(io: File.open("app/assets/images/PSU/CoreReactor.jpg"), filename: "CoreReactor.jpg")

psu4 = Item.create!(
    price: 130.90,
    title: "Cooler Master V750 Gold V2 750 W 80+ Gold Certified Fully Modular ATX Power Supply",
    description: "The MWE Gold - V2 (Full Modular) is the next step in the evolution of Cooler Master's entry level 80 PLUS Gold power supply unit line. The original MWE Gold series was created in order to offer a simpler and more affordable Gold rated option in order to help users make the transition from 80 PLUS White and Bronze power supply units more accessible. While there is still demand for White and Bronze units, the global standard has been shifting to Gold. Some countries have even begun to legislate 80 PLUS Gold efficiency as the legal minimum to purchase. This is why bringing affordable options like the MWE Gold is so important to Cooler Master. The MWE Gold - V2 improves upon the original version in the places where users will see the most immediate benefit.",
    brand: 'Cooler Master',
    wattage: 750,
    category: 'PSU',
    for_sale: true
)
psu4.picture.attach(io: File.open("app/assets/images/PSU/V750.jpg"), filename: "V750.jpg")

psu5 = Item.create!(
    price: 119.99,
    title: "EVGA SuperNOVA 850 G7 850 W 80+ Gold Certified Fully Modular ATX Power Supply",
    description: "Introducing the EVGA SuperNOVA G7 - the most efficient, micro-sized 80 Plus Gold-certified ATX power supply available. At only 130mm length, these power supplies find enough space to pack a half-bridge LLC Resonant Controller and DC-DC design, along with 100% Japanese Capacitors and better layout placement to allow the SuperNOVA G7 to reach near-Platinum efficiency. Despite its size, these units remain whisper quiet with a 120mm FDB fan and EVGA ECO Mode to keep the power supply silent at medium to low loads, which can be monitored in real-time with the System Load Indicator Bars on the side of the power supply. Backed with EVGA's 10-Year Limited Warranty and a full suite of protections, the EVGA SuperNOVA G7 is ready for play.",
    brand: 'EVGA',
    wattage: 850,
    category: 'PSU',
    for_sale: true
)
psu5.picture.attach(io: File.open("app/assets/images/PSU/850G7.jpg"), filename: "850G7.jpg")

psu6 = Item.create!(
    price: 267.99,
    title: "MSI MEG Ai1000P PCIE5 1000 W 80+ Platinum Certified Fully Modular ATX Power Supply",
    description: "The MEG gaming power supply is proudly backed by a 10-year limited warranty, guaranteeing long term reliable operation. Aiming for unwavering product quality and performance stability, the MEG gaming power supply comes with 100% Japanese 105° C capacitors and solid capacitors. Organizing cables is often the most bothersome part of building a PC. With the MEG gaming power supply’s fully modular design, it means that only the connectors required by the build need to be used, significantly reducing cable clutter and simplifying the system’s overall build.",
    brand: 'MSI',
    wattage: 1000,
    category: 'PSU',
    for_sale: true
)
psu6.picture.attach(io: File.open("app/assets/images/PSU/Ai1000P.jpg"), filename: "Ai1000P.jpg")

psu7 = Item.create!(
    price: 211.86,
    title: "Silverstone SX1000-LPT 1000 W 80+ Platinum Certified Fully Modular SFX Power Supply",
    description: "Since its launch in 2015, the SFX-L form factor has garnered popular recognition and support among enthusiasts with its larger 120mm fan able to achieve better balance of power and quietness in small form factor PCs than what was possible with standard SFX. And as a leader in power supply miniaturization, SilverStone has continued its efforts in advancing the SFX-L forward to reach ever higher limit. The SX1000-LPT not only has unprecedented 1000 watts of power output but also has the second highest level of 80 PLUS efficiency with a Platinum rating. It includes all features available from top of the line SilverStone PSUs such as flexible flat cables, all Japanese capacitors and advanced semi-fanless capability. For those looking to build the most efficient small form factor systems possible with great quality and power, the SX1000-LPT is definitely the top choice.",
    brand: 'Silverstone',
    wattage: 1000,
    category: 'PSU',
    for_sale: true
)
psu7.picture.attach(io: File.open("app/assets/images/PSU/SX1000.jpg"), filename: "SX1000.jpg")

psu8 = Item.create!(
    price: 199.43,
    title: "Thermaltake Toughpower GF3 TT Premium 1350 W 80+ Gold Certified Fully Modular ATX Power Supply",
    description: "Power up your computer system without cluttering it with cables by using the Thermaltake Toughpower GF3 1350W 80 PLUS Gold Modular ATX Power Supply. Delivering high power efficiency with the Intel ATX 3.0 specification, this power supply provides up to 750W with a single +12V rail. Supporting PCIe 5.0 graphics cards, the Toughpower GF3 includes a 16-pin VGA power connector that helps to ensure performance and stability. The flat, fully modular, low-profile cable design allows you to only use the cables that you need for a clean, organized, and uncluttered build.",
    brand: 'Thermaltake',
    wattage: 1350,
    category: 'PSU',
    for_sale: true
)
psu8.picture.attach(io: File.open("app/assets/images/PSU/GF3.jpg"), filename: "GF3.jpg")

psu9 = Item.create!(
    price: 609.99,
    title: "Corsair AX1600i 1600 W 80+ Titanium Certified Fully Modular ATX Power Supply",
    description: "The CORSAIR AX1600i is the ultimate digital ATX power supply, built using only the highest quality components for unmatched performance and better than 80 PLUS Titanium efficiency. State-of-the-art gallium nitride transistors, and 100% 105 DegreeC Japanese capacitors deliver 1600W of ultra-stable, ultra-efficient power, while the AX1600i's digital design allows for complete control and monitoring in CORSAIR LINK software. Adjust fan speeds, switch between single or multi-rail overcurrent protection (OCP), or monitor your PSU's voltages and efficiency. Zero RPM Fan mode ensures near-silent operation at low and medium loads and the fully modular, low profile cable set makes for easy installation and great-looking builds. It's the ultimate PSU for the most ambitious PC builds. Fan bearing technology - Fluid Dynamic Bearing. Continuous output rated temperature C: 50°C.",
    brand: 'Corsair',
    wattage: 1600,
    category: 'PSU',
    for_sale: true
)
psu9.picture.attach(io: File.open("app/assets/images/PSU/AX1600i.jpg"), filename: "AX1600i.jpg")

psu10 = Item.create!(
    price: 168.99,
    title: "Corsair SF750 750 W 80+ Platinum Certified Fully Modular SFX Power Supply",
    description: "The Corsair SF750 80+ Platinum SFX power supply is an extraordinarily power-dense PSU ready to power the most cutting-edge small form factor PCs with 750 continuous watts 80+ Platinum certification makes it an ultra-efficient power supply, creating less heat and lower electric bills A large 92mm fan provides industry-leading performance with minimal noise thanks to a zero RPM Mode that only activates at higher loads Fully modular individually-sleeved cables allow you to maximize space and improve airflow inside your PC 105 Degree rated Japanese capacitors and premium electrical components ensure superior performance for years of stable and dependable operation Choose the SF750 for unprecedented power in your next small form factor PC Tech support opt 1.",
    brand: 'Corsair',
    wattage: 750,
    category: 'PSU',
    for_sale: true
)
psu10.picture.attach(io: File.open("app/assets/images/PSU/SF750.jpg"), filename: "SF750.jpg")


# RAMs
ram1 = Item.create!(
    price: 164.99,
    title: "Corsair Dominator Platinum RGB 32 GB (2 x 16 GB) DDR5-6200 CL36 Memory",
    description: "Push the limits of performance with CORSAIR DOMINATOR PLATINUM RGB DDR5 Memory optimized for Intel. DDR5 delivers higher frequencies and greater capacities than previous generation memory, helping your system power through complex tasks faster than ever before. With world-renowned design lit by 12 ultra-bright CAPELLIX RGB LEDs, DOMINATOR PLATINUM RGB DDR5 complements the styling and power of the most high-end systems. Hand-sorted, tightly screened memory chips and a custom PCB cooled by patented DHX cooling technology ensure consistently high performance. CORSAIR iCUE software enables RGB lighting customization and synchronization, real-time performance information, and onboard voltage regulation for easier, more controlled overclocking. Supporting Intel XMP 3.0 and backed by a limited lifetime warranty, DOMINATOR PLATINUM RGB DDR5 is in a class of its own.",
    brand: 'Corsair',
    wattage: 9,
    category: 'RAM',
    for_sale: true
)
ram1.picture.attach(io: File.open("app/assets/images/RAM/PlatinumDDR5.jpg"), filename: "PlatinumDDR5.jpg")

ram2 = Item.create!(
    price: 69.98,
    title: "Corsair Vengeance 16 GB (2 x 8 GB) DDR5-5200 CL40 Memory",
    description: "CORSAIR VENGEANCE DDR5, optimized for Intel® motherboards, delivers the higher frequencies and greater capacities of DDR5 technology in a high-quality, compact module that suits your system. Tightly-screened high-frequency memory chips power your PC through faster processing, rendering, and buffering than ever, with onboard voltage regulation for easy, finely controlled overclocking. CORSAIR iCUE software enables real-time frequency monitoring, onboard voltage regulation, and Intel XMP 3.0 profile customization. A distinctive solid aluminum heatspreader keeps your memory cool, while ensuring wide compatibility with a huge range of motherboards and CPU coolers. With a limited lifetime warranty as your guarantee of reliability for years to come, VENGEANCE DDR5 continues a long-standing legacy of memory performance.",
    brand: 'Corsair',
    wattage: 4,
    category: 'RAM',
    for_sale: true
)
ram2.picture.attach(io: File.open("app/assets/images/RAM/VengeanceDDR5.jpg"), filename: "VengeanceDDR5.jpg")

ram3 = Item.create!(
    price: 152.99,
    title: "Patriot Viper Xtreme 5 RGB 32 GB (2 x 16 GB) DDR5-7600 CL36 Memory",
    description: "Push your system to the limit with Viper Gaming’s newest high-speed DDR5 DRAM series: the Viper Xtreme 5. Featuring ridiculously fast speeds of up to 8000MHz and capacities of up to 32GB for select models, the Viper Xtreme 5 is designed to deliver consistent record-breaking performance and overclocking capabilities. With support for three selectable XMP 3.0 overclock profiles, the Viper Xtreme 5 can meet the needs of the most extreme overclockers out there. Backed by a limited lifetime warranty and built with best-in-class parts and materials, the Viper Xtreme 5 is 100% hand-tested on the latest Intel DDR5 platform for quality assurance and reliability on high performance to offer peace of mind for all users. Any unsupported platform may need to operate at a lower speed or require manual tuning for stability.",
    brand: 'Patriot',
    wattage: 9,
    category: 'RAM',
    for_sale: true
)
ram3.picture.attach(io: File.open("app/assets/images/RAM/XtremeDDR5.jpg"), filename: "XtremeDDR5.jpg")

ram4 = Item.create!(
    price: 204.99,
    title: "G.Skill Trident Z5 Neo 64 GB (2 x 32 GB) DDR5-6000 CL30 Memory",
    description: "Created from hand-screened DDR5 DRAM ICs, Trident Z5 Neo is designed for overclocked memory performance on compatible AMD platforms. Featuring a sleek aluminum heatspreader design and AMD EXPO overclock profile support, it is the ideal choice to build a high-performance system.",
    brand: 'G.Skill',
    wattage: 19,
    category: 'RAM',
    for_sale: true
)
ram4.picture.attach(io: File.open("app/assets/images/RAM/Z5DDR5.jpg"), filename: "Z5DDR5.jpg")

ram5 = Item.create!(
    price: 90.47,
    title: "Kingston FURY Beast RGB 16 GB (2 x 8 GB) DDR5-6000 CL40 Memory",
    description: "Kingston FURY Beast DDR5 RGB lets you overclock in style on next-gen gaming platforms with cutting-edge technology. Experience the superior speed advancements of DDR5 with double the banks and double the burst length. Vibrant RGB lighting customisable with Kingston FURY CTRL software and patented Infrared Sync Technology along with the new heat spreader design sets you apart in and out of the game. Additionally, Kingston FURY Beast DDR5 RGB features Plug N Play automatic overclocking at 4800MT/s and utilises Intel XMP 3.0, a new overclock spec with two customisable profiles.",
    brand: 'Kingston',
    wattage: 4,
    category: 'RAM',
    for_sale: true
)
ram5.picture.attach(io: File.open("app/assets/images/RAM/BeastDDR5.jpg"), filename: "BeastDDR5.jpg")

ram6 = Item.create!(
    price: 122.99,
    title: "PNY XLR8 Gaming MAKO 32 GB (2 x 16 GB) DDR5-5600 CL36 Memory",
    description: "PNY XLR8 Gaming MAKO DDR5 Memory is designed for gamers and enthusiasts and offers the style and performance they crave. The modules feature aluminum heat spreaders with elements inspired by the fast and aggressive Mako shark from which it gets its name. An XLR8 logo and GAMING text is proudly emblazoned on the side of the module and silver angled relief lines are machined into the heat spreader to reflect other components’ lighting and provide unmatched flair and style. Compatibility with Intel XMP delivers extreme overclocking out of the box and allows users to get the most out of their MAKO DDR5 modules. Top-tier components and select ICs combine to deliver aggressive speed, low latency and the bullet-proof reliability gamers and enthusiasts can rely on PNY for.",
    brand: 'PNY',
    wattage: 9,
    category: 'RAM',
    for_sale: true
)
ram6.picture.attach(io: File.open("app/assets/images/RAM/XLR8DDR5.jpg"), filename: "XL8DDR5.jpg")

ram7 = Item.create!(
    price: 65.98,
    title: "TEAMGROUP T-Force Xtreem ARGB 16 GB (2 x 8 GB) DDR4-3600 CL18 Memory",
    description: "T-FORCE XTREEM ARGB DDR4 Gaming Memory is plug and play ready. Overclocking can be super easy without the hassle of manually adjusting the BIOS. It is compatible with both Intel & AMD platform, therefore gamers can build their system without worries.",
    brand: 'TEAMGROUP',
    wattage: 6,
    category: 'RAM',
    for_sale: true
)
ram7.picture.attach(io: File.open("app/assets/images/RAM/XTREEMDDR4.jpg"), filename: "XTREEMDDR4.jpg")

ram8 = Item.create!(
    price: 46.99,
    title: "G.Skill Ripjaws V 16 GB (2 x 8 GB) DDR4-3600 CL16 Memory",
    description: "Ripjaws V series DDR4 DRAM memory is designed for sleek aesthetics and performance, making it an ideal choice for building a new PC system or for upgrading your system memory. Available in a wide range of frequency options, Ripjaws V series lets you enjoy a computing experience at DDR4 speeds for gaming, video & image editing, rendering, and data processing. The Ripjaws V DDR4 memory series is tested under G.SKILL's rigorous validation process to ensure outstanding quality.",
    brand: 'G.Skill',
    wattage: 6,
    category: 'RAM',
    for_sale: true
)
ram8.picture.attach(io: File.open("app/assets/images/RAM/RipjawsDDR4.jpg"), filename: "RipjawsDDR4.jpg")

ram9 = Item.create!(
    price: 109.99,
    title: "G.Skill Trident Z Royal 32 GB (2 x 16 GB) DDR4-4000 CL18 Memory",
    description: "Trident Z Royal features a patented crystalline light bar a crown jewel design, meticulously crafted to refract and scatter light in a magnificent display of RGB lighting. Mirroring the high-class light bar design, polished aluminum heatspreaders of gold or silver colors cool the memory modules in the classic Trident Z tri-fin design. Keep memory efficiently cool with solid CNC-cut aluminum heatspreaders, electroplated with a lustrous gold or silver color. Each Trident Z Royal DRAM module is built with hand-screened memory ICs on a custom 10-layer PCB for oustandingoverclock performance.",
    brand: 'G.Skill',
    wattage: 12,
    category: 'RAM',
    for_sale: true
)
ram9.picture.attach(io: File.open("app/assets/images/RAM/ZRoyalDDR4.jpg"), filename: "ZRoyalDDR4.jpg")

ram10 = Item.create!(
    price: 119.99,
    title: "Corsair Dominator Platinum RGB 32 GB (2 x 16 GB) DDR4-3200 CL16 Memory",
    description: "CORSAIR DOMINATOR® PLATINUM RGB DDR4 Memory redefines premium DDR4 memory, with superior aluminum craftsmanship, tightly screened high-frequency memory chips and 12 ultra-bright, individually addressable CAPELLIX RGB LEDs.",
    brand: 'Corsair',
    wattage: 12,
    category: 'RAM',
    for_sale: true
)
ram10.picture.attach(io: File.open("app/assets/images/RAM/PlatinumDDR4.jpg"), filename: "PlatinumDDR4.jpg")


# Storages
storage1 = Item.create!(
    price: 249.99,
    title: "Samsung 990 Pro 4 TB M.2-2280 PCIe 4.0 X4 NVME Solid State Drive",
    description: "Reach max performance of PCIe® 4.0*. Experience longer- lasting, opponent blasting speed. The in-house controller's smart heat control delivers our best power efficiency while maintaining ferocious performance that always keeps you at the top of your game. *PCIe 4.0’s best theoretical sequential read is 8000 MB/s - 990 PRO reaches 7450 MB/s as of Q3, 2022. **Source: 2003-2022 OMDIA data: NAND suppliers' revenue market share. ***Sequential and random write performance was measured with Intelligent Turbo Write technology being activated. Intelligent Turbo Write operates only within a specific data transfer size. Performance may vary depending on SSD’s firmware, system hardware & configuration and other factors. For detailed information, please contact your local service center. 990 PRO reaches 7,450 MB/s based on test system configuration: AMD Ryzen 7 5800X 8-Core Processor CPU@3.80GHz, DDR4 3600MHz 16GBx2 (PC4-25600 Overclock), OS - Windows 10 Pro 64bit, Chipset - ASRock-X570 Taichi. To maximize the performance of the 990 PRO, please check whether your system supports PCIe 4.0 at the Intel or AMD website. ****980 PRO Sequential Read/Write - 1,129/877 MB/Watt, 990 PRO Sequential Read/Write - 1380/1319 MB/Watt based on test result of 1TB capacity model.",
    brand: 'Samsung',
    wattage: 11,
    category: 'Storage',
    for_sale: true
)
storage1.picture.attach(io: File.open("app/assets/images/Storage/990.jpg"), filename: "990.jpg")

storage2 = Item.create!(
    price: 229.99,
    title: "Western Digital Black SN850X 4 TB M.2-2280 PCIe 4.0 X4 NVME Solid State Drive",
    description: "Strap in for breakneck gaming speeds with the WD_BLACK SN850X NVMe™ SSD. Crush load times and slash throttling, lagging, and texture pop-ins for a smooth, fast experience that lets you compete at your absolute peak. This purpose-built gaming drive comes in capacities of 1TB to 4TB(2), with an optional heatsink on the 1TB and 2TB drives to help sustain top-end performance for more consistent gameplay. With the advanced features of Game Mode 2.0 (Windows only) automatically turned on by the WD_BLACK Dashboard and supporting Microsoft's DirectStorage technology, the WD_BLACK SN850X NVMe SSD delivers top-tier performance to keep you playing, streaming, recording, and dominating the game.  (2) 1GB = 1 billion bytes and 1TB = 1 trillion bytes. Actual user capacity may be less depending on operating environment.",
    brand: 'Western Digital',
    wattage: 11,
    category: 'Storage',
    for_sale: true
)
storage2.picture.attach(io: File.open("app/assets/images/Storage/SN850X.jpg"), filename: "SN850X.jpg")

storage3 = Item.create!(
    price: 97.19,
    title: "Lexar NM790 1 TB M.2-2280 PCIe 4.0 X4 NVME Solid State Drive",
    description: "With a blazing 7400MB/s sequential read, 6500MB/s sequential write1 and random read speeds of up to 1,000,000 IOPs, the Lexar® NM790 SSD has the performance to put you across the finish line first or easily meet your most demanding deadlines. At 2x as fast as PCIe Gen3 SSDs2, the Lexar® NM790 M.2 2280 PCIe Gen 4x4 NVMe SSD helps you perform at your best, fast. Consuming up to 40% less power consumption than DRAM cache-enabled PCIe Gen 4 SSDs2, Lexar® NM790 M.2 2280 PCIe Gen 4x4 NVMe SSD not only keeps energy costs down, but also lets you go longer between charges of your laptop battery.",
    brand: 'Lexar',
    wattage: 11,
    category: 'Storage',
    for_sale: true
)
storage3.picture.attach(io: File.open("app/assets/images/Storage/NM790.jpg"), filename: "990.jpg")

storage4 = Item.create!(
    price: 99.99,
    title: "Western Digital Black SN770 2 TB M.2-2280 PCIe 4.0 X4 NVME Solid State Drive",
    description: "Get ready to game even faster with the WD_BLACK SN770 NVMe SSD. Zoom past load times and get into the action now with a purpose-built gaming drive that boasts up to 40% faster performance and up to 20% more power efficiency at maximum speed over the previous generation(3) (1TB model), plus a PCIe Gen4 interface(4) that delivers blazing speeds of up to 5,150MB/s(1) (1TB and 2TB models).​ (1)Based on read speed. 1 MB/s = 1 million bytes per second. Based on internal testing; performance may vary depending upon host device, usage conditions, drive capacity, and other factors.​ (3)Up to 40% faster and up to 20% better power efficiency at maximum speed as compared to our last gen product, the 1TB WD_BLACK SN750 SE SSD.​ (4)PCIe Gen4 storage technology requires a compatible motherboard. WD_BLACK SN770 is backwards-compatible with PCIe Gen3.​",
    brand: 'Western Digital',
    wattage: 11,
    category: 'Storage',
    for_sale: true
)
storage4.picture.attach(io: File.open("app/assets/images/Storage/SN770.jpg"), filename: "SN770.jpg")

storage5 = Item.create!(
    price: 249.99,
    title: "TEAMGROUP T-Force Cardea Z540 2 TB M.2-2280 PCIe 5.0 X4 NVME Solid State Drive",
    description: "The latest intelligent thermal conditional technologies are incorporated with internal temperature sensors to automatically adjust energy output for effective monitoring and control, prevent SSD from overheating, protect data integrity, and effectively extend SSD service life. The ultra-thin graphene heatsink can be complimentary to any original motherboard heatsink. T-FORCE CARDEA Z540 M.2 PCIe 5.0 SSD yields better heat dissipation performance than the original motherboard heatsink alone, making it the best heat dissipation solution for original motherboard heatsinks. The miraculous graphene boasts a perfect hexagonal honeycomb structure. It features exceptional diagonal conductivity that allows heat at the primary heat source to be rapidly transferred away horizontally, delivering excellent heat dissipation performance.",
    brand: 'TEAMGROUP',
    wattage: 11,
    category: 'Storage',
    for_sale: true
)
storage5.picture.attach(io: File.open("app/assets/images/Storage/Z540.jpg"), filename: "Z540.jpg")

storage6 = Item.create!(
    price: 269.99,
    title: "Crucial T700 2 TB M.2-2280 PCIe 5.0 X4 NVME Solid State Drive",
    description: "Are you ready to feel the rush of extreme performance? The Crucial T700 PCIe 5.0 NVMe SSD offers speeds of up to 12,400MB/s sequential reads and up to 11,800MB/s sequential writes** (up to 1,500K IOPS random reads/writes**) for faster gaming, video editing, 3D rendering and heavy workload applications. Built with Micron 232-layer TLC NAND3 and ready for use with your motherboard’s heatsink*, the Crucial T700 Gen5 SSD is optimized for performance, takes full advantage of Microsoft DirectStorage, and is backward compatible with Gen3 and Gen4 motherboards. With SSD speeds nearly 2x faster than Gen4**** in your PC, you’ll never look back from the Crucial T700",
    brand: 'Crucial',
    wattage: 11,
    category: 'Storage',
    for_sale: true
)
storage6.picture.attach(io: File.open("app/assets/images/Storage/T700.jpg"), filename: "T700.jpg")

storage7 = Item.create!(
    price: 29.99,
    title: "Crucial P3 500 GB M.2-2280 PCIe 3.0 X4 NVME Solid State Drive",
    description: "Basic bootup speeds won’t cut it — not at work, on the go, or in the game. But the Crucial P3 SSD is anything but basic. With NVMe performance that’s nearly 5x faster than SATA and nearly 20x faster than HDD2, the P3 leaves older storage technology in the dust. With sequential read/write speeds up to 3500/3000MB/s, storage capacities up to 4TB, Micron Advanced 3D NAND, and innovative controller technology, the Crucial P3 gives you the speed you need for the price you want. Get faster bootups, downloads and file transfers, and store all your files, photos, videos, apps, and games with room to spare with the quality and dependability you expect from Crucial.",
    brand: 'Crucial',
    wattage: 10,
    category: 'Storage',
    for_sale: true
)
storage7.picture.attach(io: File.open("app/assets/images/Storage/P3.jpg"), filename: "P3.jpg")

storage8 = Item.create!(
    price: 45.99,
    title: "Crucial P5 Plus 1 TB M.2-2280 PCIe 4.0 X4 NVME Solid State Drive",
    description: "Are you ready for next-gen performance? The Crucial P5 Plus SSD delivers remarkable speed and data protection with sequential reads up to 6600MB/s for transformative computing. Engineered by Micron with the latest Gen4 NVMe technology, the Crucial P5 Plus includes advanced features like full hardware-based encryption, dynamic write acceleration, and adaptive thermal protection to keep your data safe while enhancing system reliability. Designed specifically for intensive workloads, high-quality creative content, hardcore PC / console gaming and compatible with Heatsink. The P5 Plus is also backward compatible with most Gen3 systems for ultimate flexibility.",
    brand: 'Crucial',
    wattage: 11,
    category: 'Storage',
    for_sale: true
)
storage8.picture.attach(io: File.open("app/assets/images/Storage/P5Plus.jpg"), filename: "P5Plus.jpg")

storage9 = Item.create!(
    price: 57.99,
    title: 'Seagate Barracuda Compute 2 TB 3.5" 7200 RPM Internal Hard Drive',
    description: "Store more, compute faster, and do it confidently with the proven reliability of BarraCuda internal hard drives. Perfect for designers, musicians, photographers, and video editors using multiple applications at once, these solutions offer uninterrupted performance, optimized read/write caching technology, and a variety of capacities and form factors to choose from. Note: Graphics May Vary.",
    brand: 'Seagate',
    wattage: 20,
    category: 'Storage',
    for_sale: true
)
storage9.picture.attach(io: File.open("app/assets/images/Storage/BarraCuda.jpg"), filename: "BarraCuda.jpg")

storage10 = Item.create!(
    price: 104.99,
    title: 'Western Digital Blue 6 TB 3.5" 5400 RPM Internal Hard Drive',
    description: "WD Blue internal hard drives deliver reliability for office and web applications. They are ideal for use as primary drives in desktop PCs and for office applications. With a range of capacities and cache sizes, there’s a WD Blue internal hard drive that’s just right for you.",
    brand: 'Western Digital',
    wattage: 15,
    category: 'Storage',
    for_sale: true
)
storage10.picture.attach(io: File.open("app/assets/images/Storage/WDBlue.jpg"), filename: "WDBlue.jpg")


# Coolers
cooler1 = Item.create!(
    price: 119.95,
    title: "Noctua NH-U12A 60.09 CFM CPU Cooler",
    description: "The NH-U12A is the latest, 5th generation of Noctua’s NH-U12 series of 120mm size premium-quality quiet CPU coolers. Conceived to push the envelope of the 120mm form factor, it combines two of Noctua’s flagship model NF-A12x25 PWM 120mm fans with a completely redesigned heatsink featuring 7 heatpipes and an increased fin surface area for superior heat dissipation. This way, the NH-U12A can rival the performance of many 140mm size coolers while offering 120mm class case and PCIe compatibility. Topped off with the trusted, pro-grade SecuFirm2 multi-socket mounting system and Noctua’s proven NT-H1 thermal compound, the NH-U12A is a deluxe choice that combines top-tier performance with excellent compatibility and outstanding quietness of operation.",
    brand: 'Noctua',
    wattage: 6,
    category: 'Cooler',
    for_sale: true
)
cooler1.picture.attach(io: File.open("app/assets/images/Cooler/NH-U12A.jpg"), filename: "NH-U12A.jpg")

cooler2 = Item.create!(
    price: 36.99,
    title: "Cooler Master Hyper 212 Black Edition 42 CFM CPU Cooler",
    description: "The legendary Hyper air cooler is back and better than before. Hyper 212 Black Edition offers better installation and great performance, easily one of the best air cooling solutions. Aluminum top cover and nickel plated jet black fins give the Hyper 212 Black Edition a more premium exterior appeal. The sleek jet black not only makes it look great, but also increases cooling performance.",
    brand: 'Cooler Master',
    wattage: 3,
    category: 'Cooler',
    for_sale: true
)
cooler2.picture.attach(io: File.open("app/assets/images/Cooler/Hyper212.jpg"), filename: "Hyper212.jpg")

cooler3 = Item.create!(
    price: 59.90,
    title: "be quiet! Dark Rock Pro 4 50.5 CFM CPU Cooler",
    description: "Dark Rock Pro 4 offers immense cooling performance of 250W TDP and virtually inaudible operation. Excellent for overclocked systems and demanding workstations. Two silent Wings PWM fans feature advanced fluid-dynamic bearings and smooth 6-Pole motors funnel-shaped frame of the front silent Wings 3 fan provides extremely high Air pressure achieves only 24.3Db(a) at maximum fan speed seven high-performance copper heat pipes provide Maximal heat conductance wave-contoured cooling fins for increased air circulation cutouts on the cooling fins enhance the RAM compatibility special Black coating with ceramic particles enables perfect heat transfer supports an additional 120mm fan.",
    brand: 'be quiet!',
    wattage: 6,
    category: 'Cooler',
    for_sale: true
)
cooler3.picture.attach(io: File.open("app/assets/images/Cooler/DarkRock.jpg"), filename: "DarkRock.jpg")

cooler4 = Item.create!(
    price: 108.99,
    title: "Corsair iCUE H100i RGB ELITE 59.1 CFM Liquid CPU Cooler",
    description: "The CORSAIR iCUE H100i RGB ELITE Series liquid CPU coolers offer high-performance CPU cooling, integrated RGB lighting, and refined aesthetics, with CORSAIR AF ELITE Series PWM fans that deliver powerful airflow and specialized low-noise cooling modes. With 16 individually addressable RGB LEDs on a modern pump head design, the H100i RGB ELITE Series delivers great cooling with the looks to match. Powerful CORSAIR iCUE software enables you to create vivid lighting effects, monitor CPU and cooling temps, and adjust fan speeds. Zero RPM fan mode and Variable Pump Speed modes precisely regulate noise levels for quiet operation. With a thermally optimized copper cold plate and easy installation on the latest CPU brackets, the H100i RGB ELITE delivers first-class CPU cooling.",
    brand: 'Corsair',
    wattage: 13,
    category: 'Cooler',
    for_sale: true
)
cooler4.picture.attach(io: File.open("app/assets/images/Cooler/H100i.jpg"), filename: "H100i.jpg")

cooler5 = Item.create!(
    price: 269.00,
    title: "Cooler Master Wraith Ripper 76.4 CFM CPU Cooler",
    description: "Specialized air-guide armor designed to guide the flow of air for peak cooling performance and reduce dead heat spots on the cooler. The armor is also illuminated by number of addressable RGB LED's for full color customization. AMD Ryzen Threadripper has up to 32 cores within the package. To ensure heat is transferred and removed quickly and evenly, Wraith Ripper is custom fitted to provide full coverage. A combination of 2 sets of heatsink allows bigger and more spread out surface area. The black paint enchanes radiation cooling performance.",
    brand: 'Cooler Master',
    wattage: 3,
    category: 'Cooler',
    for_sale: true
)
cooler5.picture.attach(io: File.open("app/assets/images/Cooler/WraithRipper.jpg"), filename: "WraithRipper.jpg")

cooler6 = Item.create!(
    price: 79.98,
    title: "Deepcool ASSASSIN III 90.37 CFM CPU Cooler",
    description: "Maximize PC overclocking performance with the DeepCool ASSASSIN III CPU cooler armed with seven heatpipes and two TF140S fans for up to 280W TDP.",
    brand: 'Deepcool',
    wattage: 6,
    category: 'Cooler',
    for_sale: true
)
cooler6.picture.attach(io: File.open("app/assets/images/Cooler/AssassinIII.jpg"), filename: "AssassinIII.jpg")

cooler7 = Item.create!(
    price: 74.99,
    title: "Cooler Master MasterAir MA624 Stealth 67 CFM CPU Cooler",
    description: "Cooler Master’s MasterAir MA624 Stealth brings to you twice the performance with dual fans and tower in a striking package. Equipped with jet black hardware throughout, its dark veil is nothing to be underestimated. The twin 140mm SickleFlow fan combined with dual tower heatsink configuration delivers a powerful Push-Pull setup, with its 6 pipes and nickel plated base working in sync to draw heat out rapidly. An optional 3rd 120mm fan is included to you for swap out for necessary RAM clearance. The MA624 Stealth is the ultimate secret weapon to blast away heat.",
    brand: 'Cooler Master',
    wattage: 6,
    category: 'Cooler',
    for_sale: true
)
cooler7.picture.attach(io: File.open("app/assets/images/Cooler/MA624.jpg"), filename: "MA624.jpg")

cooler8 = Item.create!(
    price: 119.95,
    title: "Noctua NH-D15 chromax.black 82.52 CFM CPU Cooler",
    description: "The NH-D15 chromax.black is an all-black version of Noctua’s award-winning flagship model NH-D15 premium-quality quiet CPU cooler. Thanks to the same proven dual-tower heatsink design and NF-A15 PWM fans, it stays true to the NH-D15’s successful formula of rivalling the performance of all-in-one water coolers while maintaining superb quietness of operation. At the same time, the chromax.black version with its black fans and black coated heatsink combines these assets with a sleek stealth look. Topped off with the renowned SecuFirm2 multi-socket mounting system and Noctua’s enthusiast-grade NT-H1 thermal compound, the NH-D15 chromax.black is a deluxe choice for both overclockers and silent enthusiasts who seek an elite-class heatsink that looks just as great as it cools.",
    brand: 'Noctua',
    wattage: 6,
    category: 'Cooler',
    for_sale: true
)
cooler8.picture.attach(io: File.open("app/assets/images/Cooler/NH-D15.jpg"), filename: "NH-D15.jpg")

cooler9 = Item.create!(
    price: 43.29,
    title: "ARCTIC Freezer 34 eSports DUO CPU Cooler",
    description: "Evenly spread direct-touch heat pipes and an optimised heat sink design with 54 cooling fins lead to an ideal heat dissipation for the Freezer 34 eSports DUO. A thermal coating creates micro-turbulences with a special surface structure. Combined with offset heatpipes this leads to an optimised heat-dissipation and to an increased cooling performance. The contact surface of the Freezer 34 eSports DUO heat pipes does not cover the full heatspreader, but, more importantly, is right where the processor DIE is and covers even the largest versions (18 core) completely.",
    brand: 'ARCTIC',
    wattage: 6,
    category: 'Cooler',
    for_sale: true
)
cooler9.picture.attach(io: File.open("app/assets/images/Cooler/Freezer34.jpg"), filename: "Freezer34.jpg")

cooler10 = Item.create!(
    price: 64.99,
    title: "Scythe Ninja 5 43.03 CFM CPU Cooler",
    description: "Included two Kaze Flex 120 (only 800RPM) fans as push-pull configuration makes Ninja 5 a great solution for silent PC. The premium Kaze Flex fans use Sealed Precision Fluid Dynamic Bearings for a long lifespan of 120, 000 hours (MTTF). Massive heatsink and 6 sintered heatpipes provide top-tier performance, and cut-out fin design offers great compatibility for tall memory. New H. P. M. S. III mounting system offers secure and comprehensive compatibility for most popular sockets on the market. With two Kaze Flex 120 quiet fans at max. speed of only 800 RPM, the push-pull configuration improves cooling performance and keeps low noise level. Anti-vibration rubber on the corners effectively eliminate possible vibrations and allow silent operation.",
    brand: 'Scythe',
    wattage: 6,
    category: 'Cooler',
    for_sale: true
)
cooler10.picture.attach(io: File.open("app/assets/images/Cooler/Ninja5.jpg"), filename: "Ninja5.jpg")


# Cases
case1 = Item.create!(
    price: 139.99,
    title: "Fractal Design North ATX Mid Tower Case",
    description: "North reimagines the gaming PC, introducing natural materials and bespoke details to make gaming a stylish addition to the living space. Fusing design and airflow engineering, the case features fine-patterned mesh ventilation and an open front with real walnut or oak panels. The design is complemented by sleek brass or steel details and an integrated tab for easy access to the top of the case. Inside, North offers an intuitive interior layout and generous compatibility.",
    brand: 'Fractal Design',
    wattage: 0,
    category: 'Case',
    for_sale: true
)
case1.picture.attach(io: File.open("app/assets/images/Case/North.jpg"), filename: "North.jpg")

case2 = Item.create!(
    price: 69.99,
    title: "Phanteks Eclipse G360A ATX Mid Tower Case",
    description: "The Eclipse G360A builds on the exceptional value of the P360A chassis and sets the bar even higher with more fan locations and 360 radiator support to meet next generation hardware cooling demand. The metal front panel features Phanteks' Ultra-fine Performance Mesh design that combines high airflow performance with dust filtration, all-in-one. With its high-performance design, the G360A is ready for powerful gaming setups, offering 360 radiator options in the top and front while having plenty of space for full-length GPUs, multiple HDD and SSD locations, and a vertical GPU mounting option. Like all Phanteks lighting products, the integrated D-RGB lighting is simple to control with pre-programmed lighting effects and requires no software. Optionally, the D-RGB controller can be synchronized with compatible motherboards and expanded with more D-RGB products. Equipped with the Ultra-fine Mesh front panel, the G360 was designed to meet next gen cooling demands.",
    brand: 'Phanteks',
    wattage: 0,
    category: 'Case',
    for_sale: true
)
case2.picture.attach(io: File.open("app/assets/images/Case/G360A.jpg"), filename: "G360A.jpg")

case3 = Item.create!(
    price: 99.99,
    title: "Lian Li LANCOOL 216 ATX Mid Tower Case",
    description: "MODEL : LANCOOL 216 RGB Black DIMENSIONS : (D) 480.9mm x (W) 235mm x (H) 491.7mm COLOR : Black MATERIAL: Steel / 4.0mm Tempered Glass MOTHERBOARD SUPPORT: E-ATX (Under 280mm)/ATX/Micro-ATX/Mini-ITX FAN SUPPORT: Top: 3 x 120mm / 2 x 140mm PSU Cover: 2 x 120mm / 2 x 140mm (Air Cooling mode) Front: 3 x 120mm / 2 x 140mm / 2 x 160mm Rear: 1 x 120mm / 1 x 140mm PCIe Fan Bracket: 1 x 120mm RADIATOR SUPPORT: Front: 360 / 280 / 240mm Top: 360 / 280 / 240mm Bottom: 240mm PSU SUPPORT LENGTH: ATX (Under 220mm) GPU LENGTH CLEARANCE: 392mm (max) CPU COOLER HEIGHT CLEARANCE: 180.5mm (max) DRIVE: Drive Cage：2 x 2.5” SSD + 2 x 3.5” HDD PSU Cover：2 x 2.5” SSD Behind MB tray: 2 x 2.5” SSD EXPANSION SLOT 7 I/O PORTS: 1 x Power Button 1 x Reset Button 2 x USB 3.0 1 x USB Type C 1 x Audio INCLUDED FANS LANCOOL 216 RGB Front: 2 x 160mm ARGB Fans Rear: 1 x 140mm PWM Fan",
    brand: 'Lian Li',
    wattage: 0,
    category: 'Case',
    for_sale: true
)
case3.picture.attach(io: File.open("app/assets/images/Case/216.jpg"), filename: "216.jpg")

case4 = Item.create!(
    price: 119.99,
    title: "Corsair iCUE 4000X RGB ATX Mid Tower Case",
    description: "The CORSAIR iCUE 4000X RGB is a distinctive and customizable tempered glass mid-tower ATX case with easy cable management and exceptional cooling. Two tempered glass panels and dedicated front ventilation channels combine to offer great looks and airflow. Three 120mm AirGuide RGB fans concentrate cooling and illuminate your system, controlled by the included iCUE Lighting Node CORE. The CORSAIR RapidRoute cable management system makes it effortless to route major cables through a single channel, with 25mm of routing depth. The 4000X RGB offers all the space you need for excellent cooling and storage, with room for radiators in sizes up to 360mm and four storage drives. Complete with a modern front I/O panel including a USB-C port, the 4000X RGB makes great cooling and clean looks easier than ever.",
    brand: 'Corsair',
    wattage: 0,
    category: 'Case',
    for_sale: true
)
case4.picture.attach(io: File.open("app/assets/images/Case/4000X.jpg"), filename: "4000X.jpg")

case5 = Item.create!(
    price: 109.99,
    title: "NZXT H7 Flow ATX Mid Tower Case",
    description: "The H7 Flow is an excellent chassis for any ambitious builder looking for optimized thermal performance and superior airflow. It will provide a streamlined building experience and a perforated front panel.",
    brand: 'NZXT',
    wattage: 0,
    category: 'Case',
    for_sale: true
)
case5.picture.attach(io: File.open("app/assets/images/Case/H7Flow.jpg"), filename: "H7Flow.jpg")

case6 = Item.create!(
    price: 154.90,
    title: "be quiet! Shadow Base 800 FX ATX Mid Tower Case",
    description: "Motherboard compatibility E-ATX, ATX, M-ATX, Mini-ITX Case type Midi-Tower PSU PS2 ATX (not included) Dimensions (L x W x H in mm) 550 x 247 x 522 Material Steel (SGCC), ABS Weight (kg) 11.7 (net) / 13.2 (gross) I/O port 1x USB 3.2 Gen. 2 Type C, 2 x USB 3.2, HD Audio (mic + audio) PCI slots 7 Drive bays up to 8x 2.5 (4 included) up to 4x 3.5 (2 included) Preinstalled fans (mm) / (rpm) Front: 1x Pure Wings 3 PWM 140 / 1200 Top: 1x Pure Wings 3 PWM 140 / 1200 Rear: 1x Pure Wings 3 PWM 140 / 1200 Maximum fans (mm) Front: 3x 140 / 120 Top: 3x 140 / 120 Bottom: 1x 140 / 120 Rear: 1x 140 / 120 Optional radiators (mm) Front: 120 / 140 / 240 / 280 / 360 / 420 Top: 120 / 140 / 240 / 280 / 360 / 420 Rear: 120 Maximum dimensions (mm) CPU cooler: up to 180 PSU: up to 250 GPU: 430",
    brand: 'be quiet!',
    wattage: 0,
    category: 'Case',
    for_sale: true 
)
case6.picture.attach(io: File.open("app/assets/images/Case/800FX.jpg"), filename: "800FX.jpg")

case7 = Item.create!(
    price: 95.99,
    title: "Lian Li O11 Air Mini ATX Mid Tower Case",
    description: 'Designed to enhance cooling capabilities, the O11 AIR MINI offers mesh front and top panels that promote airflow, giving your components ample breathing room. You can install a wide range of fans and liquid cooling radiators, enabling you to pick and choose how you want your system to look and feel without compromising performance. A modular back panel supports ATX, micro-ATX, and mini-ITX motherboards, giving you tons of options when picking main components. Manage your storage solutions with two dedicated 2.5" spots located behind the motherboard tray and four additional 2.5 and 3.5" combo drive locations, two of which can be swapped out in exchange for additional cooling fans. Show off your finalized rig with the tempered glass side panel and brushed aluminum finish, adding a sense of style to your custom-built system.',
    brand: 'Lian Li',
    wattage: 0,
    category: 'Case',
    for_sale: true
)
case7.picture.attach(io: File.open("app/assets/images/Case/PC-011.jpg"), filename: "PC-011.jpg")

case8 = Item.create!(
    price: 149.99,
    title: "Fractal Design Terra Mini ITX Desktop Case",
    description: 'Vented anodized aluminum exterior and solid walnut front-facing panel provides the Terra with a unique look that also has enhanced airflow to drive cooling performance. An interior adjustable motherboard spine supports Mini-ITX motherboards and can slide to fit various components such as the two 2.5" drive mounts, 120mm fans and radiators, and more. Despite its reduced size, the Terra can fit large graphics cards up to 12.6" long that take up three expansion slots vertically, promoting positive airflow so your system remains cool. The solid walnut panel hosts two ports which are compatible with USB-C 3.2 Gen 2x2 and USB-A 3.2 Gen 1 interfaces. Internal brackets are big enough to house an SFX or SFX-L power supply, allowing you to scale your energy efficiency to your liking.',
    brand: 'Fractal Design',
    wattage: 0,
    category: 'Case',
    for_sale: true
)
case8.picture.attach(io: File.open("app/assets/images/Case/Terra.jpg"), filename: "Terra.jpg")

case9 = Item.create!(
    price: 544.99,
    title: "Cooler Master HAF 700 EVO ATX Full Tower Case",
    description: "HAF 700 EVO Created Only for the Best To unlock their true potential, cooling components must work, not individually, but together as an ecosystem. The right case can do that for you.   HAF 700 EVO unveils a new era of thermal efficiency through unique features designed to transcend the standards of contemporary cooling solutions. Rediscover PC DIY: a form of entertainment, a polished skillset, an exquisite art form, and a way of living.",
    brand: 'Cooler Master',
    wattage: 0,
    category: 'Case',
    for_sale: true
)
case9.picture.attach(io: File.open("app/assets/images/Case/HAF700.jpg"), filename: "HAF700.jpg")

case10 = Item.create!(
    price: 134.99,
    title: "Fractal Design Meshify 2 XL ATX Full Tower Case",
    description: "The Meshify 2 XL is a massive high-performance case with a bold, stealth-inspired aesthetic. Its striking exterior features bolt-free, flush tempered glass, a fully removable top granting excellent interior access, and a fully redesigned front complete with USB 3.1 Gen 2 Type-C. The enormous dual-layout interior supports full-sized E-ATX and SSI-EEB boards, gigantic storage arrays and radiators up to 480 mm to make cooling a breeze.",
    brand: 'Fractal Design',
    wattage: 0,
    category: 'Case',
    for_sale: true
)
case10.picture.attach(io: File.open("app/assets/images/Case/Meshify.jpg"), filename: "Meshify.jpg")

#Bundles 
bundle1 = Bundle.create!(
    title: "The Basic Beast",
    description:"Introducing our low-cost powerhouse, the PartSlingers Basic Beast! Dive into seamless multitasking and smooth graphics with the AMD Ryzen 5 7600 6-Core Processor paired with the MSI MECH 2X CLASSIC OC Radeon RX 7600 8 GB Video Card. Our reliable MSI PRO A620M-E Micro ATX AM5 Motherboard ensures stability, while the Corsair CX550F 550 W PSU keeps things running efficiently. Experience lightning-fast performance with 16 GB Corsair Vengeance DDR5-5200 memory, and store all your games and files on the spacious 2 TB Seagate Barracuda Compute Hard Drive. The sleek Phanteks Eclipse G360A ATX Mid Tower Case houses this beast, complemented by the Cooler Master Hyper 212 Black Edition CPU Cooler for optimal cooling. Unleash the power without breaking the bank – it's the PartSlingers Basic Beast, where affordability meets performance!",
    gpu: 10,
    cpu: 16,
    motherboard: 29,
    psu: 31,
    ram: 42,
    storage: 59,
    cooler: 62,
    case: 72
)
bundle1.picture.attach(io: File.open( "app/assets/images/Bundles/low-tier.jpg"), filename:"low-tier.jpg")

bundle2 = Bundle.create!(
    title: "The Pinnacle Prodigy",
    description:"Unleash unparalleled gaming experiences with our cutting-edge components. Introducing the Pinnacle Prodigy! The heart of this beast is the AMD Ryzen 7 7700 8-Core Processor, ensuring seamless multitasking and lightning-fast processing speeds. Dive into the visual extravaganza powered by the Gigabyte WINDFORCE OC GeForce RTX 4070 12 GB Video Card, delivering stunning graphics and unrivaled realism. The Asus TUF GAMING B650-PLUS WIFI AM5 Motherboard ensures a robust foundation for your gaming endeavors, complemented by Kingston FURY Beast RGB 16 GB DDR5-6000 Memory for swift and efficient multitasking. Storage is never a concern with the Western Digital Black SN770 2 TB NVME SSD, offering rapid data access. The Thermaltake Toughpower GF3 1350W PSU and Cooler Master MasterAir MA624 Stealth CPU Cooler ensure optimal power delivery and temperature management. Housed in the sleek Fractal Design Meshify 2 XL case, this rig is not just a computer; it's a gateway to a world of gaming excellence. Upgrade to the future with PartSlingers – where performance meets passion!",
    gpu: 4,
    cpu: 18,
    motherboard: 27,
    psu: 38,
    ram: 45,
    storage: 54,
    cooler: 67,
    case: 80
)
bundle2.picture.attach(io: File.open( "app/assets/images/Bundles/mid-tier.jpg"), filename:"mid-tier.jpg")

bundle3 = Bundle.create!(
    title: "The Tech Titanic",
    description:"Behold the powerhouse that is our latest creation, the Tech Titanic, featuring the Gigabyte GAMING OC GeForce RTX 4090 24 GB Video Card for unrivaled graphics prowess. At the heart of this beast lies the Intel Core i9-13900K 3 GHz 24-Core Processor, ensuring lightning-fast processing power. The Gigabyte Z790 AORUS XTREME EATX LGA1700 Motherboard provides the perfect foundation for seamless connectivity and performance optimization. With the Corsair AX1600i 1600 W 80+ Titanium Certified Fully Modular ATX Power Supply, you can trust in stable and efficient power delivery. Dive into the future with G.Skill Trident Z5 Neo 64 GB DDR5-6000 CL30 Memory, ensuring smooth multitasking and gaming experiences. Storage is a breeze with the lightning-fast Crucial T700 2 TB M.2-2280 PCIe 5.0 X4 NVME Solid State Drive. All this power is housed in the sleek Cooler Master HAF 700 EVO ATX Full Tower Case, and the Corsair iCUE H100i RGB ELITE 59.1 CFM Liquid CPU Cooler keeps temperatures in check. Elevate your computing experience with PartSlingers – where extreme-tier specs meet uncompromising performance!",
    gpu: 1,
    cpu: 15,
    motherboard: 21,
    psu: 39,
    ram: 44,
    storage: 56,
    cooler: 64,
    case: 79
)
bundle3.picture.attach(io: File.open( "app/assets/images/Bundles/high-tier.jpg"), filename:"high-tier.jpg")
