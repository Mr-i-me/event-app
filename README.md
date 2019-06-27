# Eventor : ![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Logo Title Text 1")


### Events
` User can create Event,(dit delete their event )`
- belongs_to user
- has many Tickets
### Model
-   string `title`
-   text `description`
-   string `main_img`
-   integer `tickets`
-   bigint `user_id`
-   datetime `created_at`, null: false
-   datetime `updated_at`, null: false
-   index [`user_id`], name:

  ###  Controller
      -  index
      -  show
      -  new
      -  create
      --  private
      -set_event_id
Ticket

Belongs to events

-   string `title`
-   integer `value`
-   bigint `event_id`
-   string `ticketImg`
