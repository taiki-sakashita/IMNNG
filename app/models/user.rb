class User < ApplicationRecord
  authenticates_with_sorcery!
  enum region: { japan: 0, UTC: 100 }
  enum full_machine_voice:{ n: 0, y: 1 }
end
