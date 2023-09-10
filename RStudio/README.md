# {{ name }}
{% if __project_description__ %}
{{ __project_description__ }}
{% endif %}
This is a project for a hands-on tutorial demonstrating basic collaborative data
science functionality of the Renku platform. Please refer to [the instructions](https://bit.ly/renku-hdbi-tutorial) for carrying out the tutorial.

## Tutorial Setup

The data for the tutorial comes from the [2019 flight arrival and departure dataset](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/WTZS4K).
Once inside the project, you can import this dataset using the renku CLI.

The code for the tutorial is already prepared in the `src` directory. You can run those scripts directly from RStudio.
