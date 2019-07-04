# Eventor : ![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Logo Title Text 1")

  ### event


 `:event has_many :tickets`

 `:tickets belongs_to :Event`

 event_tickets_path => index.html.erb / tickets




`--------------------------- # OLD ---------------------------`
### Events
- belongs_to user
- has many Tickets

 ### Model
      - title,
      - description,
      - event_tickets,
      - user_id

  ### Controller
      CRUD OPERATORS
      % (Event.event_tickets).times
      % Create Tickets 
### Ticket
  -Belongs to events
  ### Model
      - sku
      - event_id
