#!/bin/bash
#SBATCH --time=1-00:00:00 
#SBATCH --mem=500gb
#SBATCH --partition=standard
#SBATCH --account=csblrivanna
#SBATCH --cpus-per-task=32
#SBATCH --mail-type=fail
#SBATCH --array=0-10                    # how many tasks in the array


module purge
module load anaconda

python metabolite_sharing_modeling.py $SLURM_ARRAY_TASK_ID

