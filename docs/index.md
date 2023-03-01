# Function App Template

For full documentation visit [mkdocs.org](https://www.mkdocs.org).

## Copying the template

If you are running this as a company repository, then create your repository as per the normal flow and make sure to reference this as your template

If you are creating this as a test project in your own workspace, or organisation, then in the github interface, navigate to this repo page and select create from template, and then choose your own workspace to save the repository to.

## Initialising your project

Once cloned to your local environment, open a powershell window and navigate to the reposiry directory. Run the `init.ps1` file to rename the repository to your new name.

## Screenshot

A screenshot 😀

![a screenshot](./content/screenshot.png)

## Project layout

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.

## Video

This section is testing basic MP4 playing functionality

### Video referenced with markdown image format 

![video](./content/vid.mp4)

(doesnt work)

### Video referenced with &lt;video&gt; tags

<video width="400" controls>
  <source src="./content/vid.mp4" type="video/mp4">
</video>


### Video referenced with &lt;iframe&gt; tags

<iframe width="560" height="315"
    src="content/vid.mp4"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

### LFS Video referenced by content URL

<video width="400" controls>
  <source src="https://github.com/thompsonbryce/function-app-baseline/blob/gh-pages/content/secondvideo.mp4?raw=true" type="video/mp4">
</video>