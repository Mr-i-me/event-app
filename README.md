# Eventor

"events"
belongs_to user
has many Tickets
  * string `title`
  * text `description`
  * string `main_img`
  * integer `tickets`
  * bigint `user_id`
  * datetime `created_at`, null: false
  * datetime `updated_at`, null: false
  * index [`user_id`], name:


Ticket

Belongs to events
  * string `title`
  * integer `value`
  * bigint `event_id`
  * string `ticketImg`
