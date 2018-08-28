#include <iostream>
#include <thread>
#include <vector>
#include <chrono>

const int THREAD_COUNT = 8;
const unsigned long long int PARTICLES_COUNT = 10'000'000;
const unsigned long long int PARTICLES_PER_THREAD = PARTICLES_COUNT/THREAD_COUNT;


typedef struct p {
    int iPosX, iPosY;
} Particle;

std::vector<Particle> vParticles;
std::vector<std::thread> vThreads;

void processParticle(unsigned long long int index) {
    unsigned long long int startIndex = index * PARTICLES_PER_THREAD;
    unsigned long long int finishIndex = startIndex + PARTICLES_PER_THREAD - 1;

    for (unsigned long long int i = startIndex; i <= finishIndex; ++i){
        Particle particle = vParticles[i];
        particle.iPosX += 1;
        particle.iPosY += 1;
    }

}


int main() {

    for (auto i = 0; i < PARTICLES_COUNT; ++i){
        vParticles.push_back({0, 0});
    }

    int i = 1000;

    double avg = 0;

    while (i --> 0) {
        vThreads.clear();

        auto start = std::chrono::high_resolution_clock::now();

        // Create Threads
        for (auto i = 0; i < THREAD_COUNT; ++i) {
            vThreads.emplace_back(std::thread(processParticle, i));
        }

        // synchronize Threads:
        for (auto i = 0; i < THREAD_COUNT; ++i) {
            vThreads[i].join();
        }

        auto finish = std::chrono::high_resolution_clock::now();

        std::chrono::duration<double> elapsed_duration = finish - start;

        auto elapsed = elapsed_duration.count();

        std::cout << "Frame time: " << elapsed << " s\r" << std::flush;

        avg += elapsed;
    }

    avg /= 1000.0;


    std::cout << "\nCompleted! Took " << avg << " average!" << std::endl;

    return 0;
}
