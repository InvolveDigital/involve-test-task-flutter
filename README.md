# Involve test task

You should spend a maximum of 2 hours on this task. It is not expected that you finish the task within this time.

## Requirements

- Clone this repository to get started
- Figma project: [Involve test task](https://www.figma.com/file/qb3fP2SGpE7B9Ogq96FnNz/Involve-test-task?node-id=0%3A1)
- Keep it clean from other dependencies, use only what is really needed
- [API documentation](https://documenter.getpostman.com/view/3109137/Tzz5ueD8)

## Getting Started

The Figma project will show you 4 different screens. Make an API request when the app opens to receive the full name of the user. The value of the `Account Name` input should be the name from the API response. The input field should be disabled.

After the user submits the form, a second api call is made with a `status` in the response. If the status is `approved`, show the `BottomSheet`, if not, display an error.

Save the `user_id` and `full_name` in Get state and reuse it in the last screen.

Use this repository to get started. It provides a few things you can reuse for this task, however, it seems like that there are some small bugs.

Submit your result for review to simon@involve.co.th once you are done.
