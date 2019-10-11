# Executive Summary
    I want to build a discordbot as a side project combine my DataBase, Networking, API interaction, Haskell Knowledge.
It's main use is as a personal secretary where search info, reminders, update feed, music and unsw handbook lookup are its main features
# Requirements
- Search Info
    - search [options] <searchString>
    - Search Sources
        - Default Google Search
            - option
                - --google -g
            - return top 5 search results
            - return link to search page
        - Google Scholar
            - option
                - --scholar -s
            - return top 5 search results
            - return link to search page
        - Discord channel
            - option
                - --discord -d
            - return top 5 search results
            - return link to search page
        - Youtube
            - option
                - --youtube -y
            - return top 5 search results
            - return link to search page
    - default search is google
- Reminder DMs
    - Set reminders
    - DM user before 1-2hr about the reminder
    - Import reminders from other sources
- Update Feed
    - Set sources to update from
    - DM user about feed update if feed source has updated since 2 hrs ago
- Music play
    - Call user to play music with
- unsw handbook lookups
    - dm user about courses they asked about
        - mainly about title, description, term, timetable, prof teaching, spots available
# Use cases
# Work Breakdown Structure
- frontend
    - Discord Dms
- backend
    - Networking
        - Establish Server to handle request/response
            - request to youtube, google, discord, google scholar about search results
            - response to Discord
    - Database
        - Caching of previous results
- testing
    - requests to src
    - reponse to discord