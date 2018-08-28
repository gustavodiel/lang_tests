# Settings
THREAD_COUNT         =           4
PARTICLE_COUNT       = 100_000_000
PARTICLES_PER_THREAD = PARTICLE_COUNT / THREAD_COUNT

class Particle
  property pos_x, pos_y

  def initialize(@pos_x : Int32, @pos_y : Int32)
  end
end

particles = Array(Particle).new

def process_particles(thread_index, particles)
  startIndex = thread_index * PARTICLES_PER_THREAD
  finishIndex = startIndex + PARTICLES_PER_THREAD

  Range.new(startIndex, finishIndex).each do |index|
    particle = particles[index]
    particle.pos_x += 1
    particle.pos_y += 1
  end
end

Range.new(0, PARTICLE_COUNT).each do |index|
  particles << Particle.new(1, 1)
end

i = 1000

avg = 0.0

while i > 0
  i = i - 1

  channel = Channel(Nil).new

  start = Time.now

  Range.new(0, THREAD_COUNT - 1).each do |index|
    spawn do
      process_particles(index, particles)
    end
  end

  (THREAD_COUNT - 1).times { channel.receive }

  finish = Time.now

  puts(finish - start)
end
