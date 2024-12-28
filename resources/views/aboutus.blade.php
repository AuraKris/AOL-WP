<x-app-layout>
    <div class="container mx-auto py-6">
        <!-- Header Image -->
        <div class="flex justify-center mb-6">
            <img src="{{ asset('storage/aboutus.jpeg')}}" alt="About Us Header Image"
                class="w-full max-w-lg rounded-lg shadow-lg">
        </div>

        <!-- About Us Section -->
        <section class="mb-10">
            <div class="p-6 border border-teal-300 rounded-lg shadow-sm">
                <h1 class="text-3xl font-bold text-center text-gray-800 mb-4">About Us</h1>
                <p class="text-gray-600 mb-4 leading-relaxed">
                    Welcome to <strong>CoreVitals.com</strong>, your trusted platform for open and supportive
                    discussions about reproductive health and diseases.
                    We are dedicated to fostering a safe space where individuals can share experiences, ask questions,
                    and learn about conditions that impact reproductive health.
                </p>
                <p class="text-gray-600 mb-4 leading-relaxed">
                    Our mission is to empower people with accurate information, connect them with others facing similar
                    challenges, and promote awareness and understanding
                    of reproductive diseases. Whether you're seeking advice, offering support, or simply exploring
                    knowledge, CoreVitals.com is here to help.
                </p>
                <p class="text-gray-600 leading-relaxed">
                    Join our community as we work together to break the stigma, share vital resources, and build a
                    network of care and support for everyone.
                </p>
            </div>
        </section>

        <!-- Co-Founders Section -->
        <section>
            <h2 class="text-2xl font-bold text-center text-gray-800 mb-6">Co-Founders</h2>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                <!-- Founder 1 -->
                <div class="text-center">
                    <div class="w-24 h-24 mx-auto mb-4 bg-gray-200 rounded-full"></div>
                    <p class="font-semibold text-gray-800">Aura Kristian Sumowidjojo</p>
                    <p class="text-gray-600">aura.sumowidjojo@binus.ac.id</p>
                </div>

                <!-- Founder 2 -->
                <div class="text-center">
                    <div class="w-24 h-24 mx-auto mb-4 bg-gray-200 rounded-full"></div>
                    <p class="font-semibold text-gray-800">Bryan Myer Setiawan</p>
                    <p class="text-gray-600">bryan.setiawan@binus.ac.id</p>
                </div>

                <!-- Founder 3 -->
                <div class="text-center">
                    <div class="w-24 h-24 mx-auto mb-4 bg-gray-200 rounded-full"></div>
                    <p class="font-semibold text-gray-800">Jenson Christopher Halim</p>
                    <p class="text-gray-600">jenson.halim@binus.ac.id</p>
                </div>
            </div>
        </section>
    </div>
</x-app-layout>